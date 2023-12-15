package pizza.resource;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import pizza.dto.DishDTO;
import pizza.dto.ToppingDTO;
import pizza.service.ToppingService;

import java.util.List;

@RestController
@RequestMapping("/api/toppings")
public class ToppingResource {
    @Autowired
    private ToppingService toppingService;
    @GetMapping("/{id}")
    public ToppingDTO findById(final @PathVariable Long id){
        return toppingService.findDTOById(id);
    }

    @GetMapping
    public List<ToppingDTO> findAll(){
        return toppingService.findAll();
    }

    @PostMapping
    public ToppingDTO createDish(final @RequestBody @Valid ToppingDTO toppingDTO) {
        return toppingService.save(toppingDTO);
    }

    @PutMapping
    public ToppingDTO updateDish(final @RequestBody ToppingDTO toppingDTO) {
        return toppingService.update(toppingDTO);
    }

    @DeleteMapping("/{id}")
    public void deleteById(final @PathVariable Long id) {
        toppingService.deleteById(id);
    }

}
