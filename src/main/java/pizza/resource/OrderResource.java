package pizza.resource;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import pizza.dto.DishDTO;
import pizza.dto.OrderDTO;
import pizza.dto.ToppingDTO;
import pizza.dto.UserDTO;
import pizza.entity.Dish;
import pizza.entity.Topping;
import pizza.exceptions.BadRequestException;
import pizza.service.DishService;
import pizza.service.OrderService;
import pizza.service.ToppingService;
import pizza.service.UserService;

import java.util.List;

@RestController
@RequestMapping("/api/order")
public class OrderResource {
    @Autowired
    private UserService userService;
    @Autowired
    private DishService dishService;
    @Autowired
    private ToppingService toppingService;
    @Autowired
    private OrderService orderService;

    @GetMapping("/{id}")
    public OrderDTO findById(final @PathVariable Long id) {
        return orderService.findDTOById(id);
    }

    @GetMapping
    public List<OrderDTO> findAll() {
        return orderService.findAll();
    }

    @GetMapping("/actual")
    public List<OrderDTO> findAllActual() {
        return orderService.findAllActual();
    }

    @PostMapping
    public OrderDTO createOrder(final @RequestBody OrderDTO orderDTO) {
        return orderService.create(orderDTO);
    }

    @PutMapping
    public OrderDTO updateOrder(final @RequestBody OrderDTO orderDTO) {
        return orderService.update(orderDTO);
    }

    @PutMapping("/close")
    public OrderDTO closeOrder(final @RequestBody Long id) {
        return orderService.closeOrder(id);
    }

    @PutMapping("/pay")
    public OrderDTO payOrder(final @RequestParam Long orderId, final @RequestParam Long userId) {
        return orderService.payOrder(userId, orderId);
    }

    @PutMapping("/{orderId}/add-dish")
    public OrderDTO addDishToOrder(final @NotNull @PathVariable Long orderId, final @NotNull @RequestParam Long dishId) {
        return orderService.addDish(orderId, dishId);
    }
    @PutMapping("/{orderId}/add-topping")
    public OrderDTO addToppingToDish(final @NotNull @PathVariable Long orderId, final @NotNull @RequestParam int dishInOrderId, final @NotNull @RequestParam Long toppingId) {
        return orderService.addToppingToDish(orderId,dishInOrderId, toppingId);
    }
    @DeleteMapping("/{id}")
    public void deleteById(final @PathVariable Long id) {
        orderService.deleteById(id);
    }

}
