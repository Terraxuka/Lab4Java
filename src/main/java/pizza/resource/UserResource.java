package pizza.resource;

import pizza.dto.UserDTO;
import pizza.service.UserService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api/user")
public class UserResource {
    @Autowired
    private UserService userService;
    @GetMapping("/{id}")
    public UserDTO findById(final @PathVariable Long id){
        return userService.findDTOById(id);
    }

    @GetMapping
    public List<UserDTO> findAll(){
        return userService.findAll();
    }

    @PostMapping
    public UserDTO createUser(final @RequestBody @Valid UserDTO userDTO){
        return userService.save(userDTO);
    }

    @PutMapping
    public UserDTO updateUser(final @RequestBody UserDTO user){
        return userService.update(user);
    }

    @DeleteMapping("/{id}")
    public void deleteById(final @PathVariable Long id){
        userService.deleteById(id);
    }

    @PatchMapping("/balance/add")
    public void addMoney(final @RequestParam Long id,
                         final @RequestParam BigDecimal money){
        userService.addMoney(id, money);
    }
    @PatchMapping("/balance/remove")
    public void removeMoney(final @RequestParam Long id,
                         final @RequestParam BigDecimal money){
        userService.removeMoney(id, money);
    }

    @GetMapping("/search")
    public UserDTO find(final @RequestParam String name,final @RequestParam String surname){
        return userService.searchByNameAndSurname(name, surname);
    }

}
