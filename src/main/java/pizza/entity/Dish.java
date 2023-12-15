package pizza.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "dishes")
public class Dish {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private String description;
    @Column
    private BigDecimal price;
    @Column
    private Boolean isBase;
    @Column
    private Boolean isModifying;
    @Column
    private Boolean isActive = Boolean.TRUE;
    @ManyToMany
    private List<Topping> toppings;
    public Dish copy(){
        final Dish dish = new Dish();
        dish.setName(getName());
        dish.setDescription(getDescription());
        dish.setPrice(getPrice());
        dish.setIsBase(getIsBase());
        dish.setIsActive(getIsActive());
        dish.setIsModifying(getIsModifying());
        List<Topping> clonedToppings = new ArrayList<>(getToppings());
        dish.setToppings(clonedToppings);
        return dish;
    }
}