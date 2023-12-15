package pizza.service;

import pizza.dto.DishDTO;
import pizza.entity.Dish;

import java.util.List;

public interface DishService {
    DishDTO findDTOById(Long id);
    public Dish findById(Long id);
    List<DishDTO> findAll();
    List<DishDTO> findAllNameContained(String name);
    void deleteById(Long id);
    DishDTO save(DishDTO position);
    DishDTO update(DishDTO position);
}
