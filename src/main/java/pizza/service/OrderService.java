package pizza.service;

import pizza.dto.OrderDTO;

import java.util.List;

public interface OrderService {
    OrderDTO findDTOById(Long id);
    List<OrderDTO> findAll();
    void deleteById(Long id);
    OrderDTO save(OrderDTO order);
    OrderDTO create(OrderDTO order);
    OrderDTO update(OrderDTO order);
    OrderDTO addDish(Long orderId, Long dishId);
    OrderDTO addToppingToDish(Long orderId, int dishId, Long toppingId);
    OrderDTO payOrder(Long userId, Long orderId);
    OrderDTO closeOrder(Long id);
    List<OrderDTO> findAllActual();
}
