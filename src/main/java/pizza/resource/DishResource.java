package pizza.resource;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import pizza.dto.DishDTO;
import pizza.service.DishService;

import java.util.List;

@RestController
@RequestMapping("/api/menu")
public class DishResource {
    @Autowired
    private DishService dishService;

    @GetMapping("/{id}")
    public DishDTO findDishById(final @PathVariable Long id) {
        return dishService.findDTOById(id);
    }

    @GetMapping
    public List<DishDTO> findAllDishes() {
        return dishService.findAll();
    }

    @PostMapping
    public DishDTO createDish(final @RequestBody @Valid DishDTO dishDTO) {
        return dishService.save(dishDTO);
    }

    @PutMapping
    public DishDTO updateDish(final @RequestBody DishDTO dish) {
        return dishService.update(dish);
    }

    @DeleteMapping("/{id}")
    public void deleteById(final @PathVariable Long id) {
        dishService.deleteById(id);
    }

    @GetMapping("/search")
    public List<DishDTO> find(final @RequestParam String name) {
        return dishService.findAllNameContained(name);
    }
}
