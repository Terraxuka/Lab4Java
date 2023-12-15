package pizza.dto;

import jakarta.persistence.Column;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pizza.entity.Dish;
import pizza.entity.Order;

import java.math.BigDecimal;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {
    private Long id;

    @NotNull
    private String description;

    @NotNull
    private BigDecimal price;

    @NotNull
    private Boolean isActive;

    @NotNull
    private Boolean isDone;
    @NotNull
    private Boolean isPaid;
    @NotNull
    private Boolean isDelivered;
    private List<Dish> dishes;

    public static OrderDTO toDTO(final Order order){
        final OrderDTO orderDTO = new OrderDTO();
        orderDTO.setId(order.getId());
        orderDTO.setDescription(order.getDescription());
        orderDTO.setPrice(order.getPrice());
        orderDTO.setIsActive(order.getIsActive());
        orderDTO.setIsDone(order.getIsDone());
        orderDTO.setIsPaid(order.getIsPaid());
        orderDTO.setIsDelivered(order.getIsDelivered());
        orderDTO.setDishes(order.getDishes());
        return orderDTO;
    }
}
