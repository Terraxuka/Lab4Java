package pizza.dto;

import pizza.entity.Order;
import pizza.entity.User;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private String surname;
    private BigDecimal balance;
    private Boolean isActive;
    private List<Order> orders;
    public static UserDTO toDTO(final User user){
        final UserDTO userDTO = new UserDTO();
        userDTO.setId(user.getId());
        userDTO.setName(user.getName());
        userDTO.setSurname(user.getSurname());
        userDTO.setBalance(user.getBalance());
        userDTO.setIsActive(user.getIsActive());
        userDTO.setOrders(user.getOrders());
        return userDTO;
    }
}
