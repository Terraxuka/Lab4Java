package pizza.dto;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pizza.entity.Dish;
import pizza.entity.Topping;

import java.math.BigDecimal;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DishDTO {
    private Long id;

    @NotNull
    private String name;

    @NotNull
    private String description;

    @NotNull
    private BigDecimal price;

    @NotNull
    private Boolean isBase;

    @NotNull
    private Boolean isActive;
    @NotNull
    private Boolean isModifying;

    private List<Topping> toppings;

    public static DishDTO toDTO(final Dish dish) {
        final DishDTO dishDTO = new DishDTO();
        dishDTO.setId(dish.getId());
        dishDTO.setName(dish.getName());
        dishDTO.setDescription(dish.getDescription());
        dishDTO.setPrice(dish.getPrice());
        dishDTO.setIsBase(dish.getIsBase());
        dishDTO.setIsActive(dish.getIsActive());
        dishDTO.setIsModifying(dish.getIsModifying());
        dishDTO.setToppings(dish.getToppings());
        return dishDTO;
    }
    public static Dish toNormal(final DishDTO dishDTO) {
        final Dish dish = new Dish();
        dish.setId(dishDTO.getId());
        dish.setName(dishDTO.getName());
        dish.setDescription(dishDTO.getDescription());
        dish.setPrice(dishDTO.getPrice());
        dish.setIsBase(dishDTO.getIsBase());
        dish.setIsActive(dishDTO.getIsActive());
        dish.setIsModifying(dishDTO.getIsModifying());
        dish.setToppings(dishDTO.getToppings());
        return dish;
    }
}
