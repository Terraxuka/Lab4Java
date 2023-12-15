package pizza.dto;

import jakarta.persistence.Column;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pizza.entity.Topping;

import java.math.BigDecimal;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ToppingDTO {
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private BigDecimal price;
    @NotNull
    private Boolean isActive;
    public static ToppingDTO toDTO(final Topping topping){
        final ToppingDTO toppingDTO = new ToppingDTO();
        toppingDTO.setId(topping.getId());
        toppingDTO.setName(topping.getName());
        toppingDTO.setPrice(topping.getPrice());
        toppingDTO.setIsActive(topping.getIsActive());
        return toppingDTO;
    }
}
