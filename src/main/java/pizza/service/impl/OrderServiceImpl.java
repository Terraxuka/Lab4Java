package pizza.service.impl;

import jakarta.persistence.criteria.CriteriaBuilder;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pizza.dto.DishDTO;
import pizza.dto.OrderDTO;
import pizza.dto.UserDTO;
import pizza.entity.Dish;
import pizza.entity.Order;
import pizza.entity.Topping;
import pizza.entity.User;
import pizza.exceptions.BadRequestException;
import pizza.repository.DishRepository;
import pizza.repository.OrderRepository;
import pizza.repository.ToppingRepository;
import pizza.repository.UserRepository;
import pizza.service.DishService;
import pizza.service.OrderService;
import pizza.service.ToppingService;
import pizza.service.UserService;

import java.math.BigDecimal;
import java.nio.file.LinkOption;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final DishRepository dishRepository;
    private final ToppingRepository toppingRepository;

    public OrderDTO findDTOById(Long id) {
        Order order = findById(id);
        return OrderDTO.toDTO(order);
    }

    private Order findById(Long id) {
        return orderRepository.findById(id)
                .orElseThrow(() -> new BadRequestException(String.format("Order with id {%s} not found", id)));
    }

    @Override
    public List<OrderDTO> findAll() {
        return orderRepository.findAll().stream()
                .map(OrderDTO::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public void deleteById(Long id) {
        Order order = findById(id);
        orderRepository.delete(order);
    }

    @Override
    public OrderDTO save(OrderDTO orderDTO) {
        Order order = new Order();
        order.setDescription(orderDTO.getDescription());
        order.setIsActive(orderDTO.getIsActive());
        order.setIsDone(orderDTO.getIsActive());
        order.setDishes(orderDTO.getDishes());
        order.setPrice(calculatePrice(orderDTO));
        orderRepository.save(order);
        return OrderDTO.toDTO(order);
    }
    @Override
    public OrderDTO create(OrderDTO orderDTO) {
        Order order = new Order();
        order.setDescription(orderDTO.getDescription());
        order.setPrice(calculatePrice(orderDTO));
        orderRepository.save(order);
        return OrderDTO.toDTO(order);
    }

    @Override
    public OrderDTO update(OrderDTO orderDTO) {
        if (orderDTO.getId() == null) {
            throw new BadRequestException("Id can't be null");
        }
        final Long orderId = orderDTO.getId();
        final Order orderDb = findById(orderId);
        if (!orderDb.getIsActive()) {
            throw new BadRequestException(String.format("Can`t change order #{%s}, order is non active", orderId));
        }

        final Order savedOrder = findById(orderDTO.getId());

        savedOrder.setDescription(orderDTO.getDescription());
        savedOrder.setIsActive(orderDTO.getIsActive());
        savedOrder.setIsDone(orderDTO.getIsActive());
        savedOrder.setDishes(orderDTO.getDishes());
        savedOrder.setPrice(calculatePrice(orderDTO));
        orderRepository.save(savedOrder);

        return OrderDTO.toDTO(savedOrder);
    }
    @Override
    public OrderDTO addDish(Long orderId, Long dishId){
        final Optional<Order> order = orderRepository.findById(orderId);
        final Optional<Dish> dish = dishRepository.findById(dishId);
        if(dish.isEmpty())
            throw new BadRequestException(String.format("Dish with id#{%s} not found", dishId));
        if(order.isEmpty())
            throw new BadRequestException(String.format("Order with id#{%s} not found", orderId));
        if((!order.get().getIsActive())||order.get().getIsPaid()||order.get().getIsDelivered())
            throw new BadRequestException("Cannot change order");
        order.get().getDishes().add(dish.get());
        orderRepository.save(order.get());
        return null;
    }


    @Override
    public OrderDTO addToppingToDish(Long orderId, int dishInOrderId, Long toppingId){
        final Optional<Order> order = orderRepository.findById(orderId);
        if(order.isEmpty())
            throw new BadRequestException(String.format("Order with id#{%s} not found", orderId));
        if(order.get().getDishes().isEmpty()||order.get().getDishes().size()<dishInOrderId)
            throw new BadRequestException(String.format("Order does not contains dish #{%s}", dishInOrderId));
        final Dish dishInOrder = order.get().getDishes().get(dishInOrderId-1);
        final Long dishDbId = dishInOrder.getId();
        if(dishDbId==null)
            throw new BadRequestException("Cannot find this dish in database");
        final Optional<Dish> dish = dishRepository.findById(dishDbId);
        final Optional<Topping> topping = toppingRepository.findById(toppingId);
        if(dish.isEmpty()) {
            throw new BadRequestException("Dish not found");
        }
        if(topping.isEmpty())
            throw new BadRequestException(String.format("Topping with id#{%s} not found", toppingId));
        if((!order.get().getIsActive())||order.get().getIsPaid()||order.get().getIsDelivered())
            throw new BadRequestException("Cannot change order");
        if(!dish.get().getIsModifying())
            throw new BadRequestException("It is not modifying dish");
        dish.get().getToppings().add(topping.get());
        final Dish newDish = dish.get().copy();
        newDish.getToppings().add(topping.get());
        dishRepository.save(newDish);
        order.get().getDishes().remove(dish.get());
        order.get().getDishes().add(newDish);
        orderRepository.save(order.get());
        return OrderDTO.toDTO(order.get());
    }
    @Override
    public List<OrderDTO> findAllActual() {
        return orderRepository.findAllByIsActiveTrueAndIsDoneFalse()
                .stream()
                .map(OrderDTO::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public OrderDTO payOrder(Long userId, Long orderId) {
        if(userId==null)
            throw new BadRequestException("User id is null");
        if(orderId==null)
            throw new BadRequestException("Order id is null");
        final Optional<User> user = userRepository.findById(userId);
        final Optional<Order> order = orderRepository.findById(orderId);

        if(user.isEmpty())
            throw new BadRequestException("User not found");
        if(order.isEmpty())
            throw new BadRequestException("Order not found");
        if (user.get().getBalance().compareTo(order.get().getPrice()) < 0)
            throw new BadRequestException(String.format("Balance {%s} ({%s}) less than order {%s} price ({%s})", user.get().getName() + " " + user.get().getSurname(), user.get().getBalance(), order.get().getId(), user.get().getBalance()));
        user.get().setBalance(user.get().getBalance().subtract(order.get().getPrice()));
        order.get().setIsPaid(true);
        orderRepository.save(order.get());
        userRepository.save(user.get());
        return OrderDTO.toDTO(order.get());
    }

    @Override
    public OrderDTO closeOrder(Long id) {
        Order order = findById(id);
        order.setIsActive(false);
        orderRepository.save(order);

        return OrderDTO.toDTO(order);
    }

    private BigDecimal calculatePrice(Order order) {
        final BigDecimal price = BigDecimal.ZERO;
        if (order == null || order.getDishes() == null || order.getDishes().isEmpty()) {
            return price;
        }
        for (Dish dish : order.getDishes()) {
            if (dish.getToppings() != null) {
                for (Topping topping : dish.getToppings()) {
                    price.add(topping.getPrice());
                }
            }
            price.add(dish.getPrice());
        }
        return price;
    }
    private BigDecimal calculatePrice(OrderDTO order) {
        BigDecimal price = BigDecimal.ZERO;
        if (order == null || order.getDishes() == null || order.getDishes().isEmpty()) {
            return price;
        }
        for (Dish dish : order.getDishes()) {
            if (dish.getToppings() != null) {
                for (Topping topping : dish.getToppings()) {
                    price =  price.add(topping.getPrice());
                }
            }
            price = price.add(dish.getPrice());
        }
        return price;
    }
}
