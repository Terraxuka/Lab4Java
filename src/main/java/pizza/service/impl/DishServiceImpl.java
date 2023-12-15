package pizza.service.impl;

import pizza.dto.DishDTO;
import pizza.entity.Dish;
import pizza.entity.User;
import pizza.exceptions.BadRequestException;
import pizza.repository.DishRepository;
import pizza.service.DishService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class DishServiceImpl implements DishService {
    private final DishRepository dishRepository;

    @Override
    public DishDTO findDTOById(Long id) {
        Dish dish = findById(id);
        return DishDTO.toDTO(dish);
    }

    public Dish findById(Long id) {
        return dishRepository.findById(id)
                .orElseThrow(() -> new BadRequestException(String.format("Dish with id {%s} not found", id)));
    }

    @Override
    public List<DishDTO> findAll() {
        return dishRepository.findAll().stream()
                .map(DishDTO::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public void deleteById(Long id) {
        Dish dish = findById(id);
        dishRepository.delete(dish);
    }

    @Override
    public DishDTO save(DishDTO dishDTO) {
        Dish dish = new Dish();
        dish.setName(dishDTO.getName());
        dish.setDescription(dishDTO.getDescription());
        dish.setIsBase(dishDTO.getIsBase());
        dish.setIsModifying(dishDTO.getIsModifying()    );
        dish.setIsActive(dishDTO.getIsActive());
        dish.setToppings(dishDTO.getToppings());
        dish.setPrice(dishDTO.getPrice());
        dishRepository.save(dish);
        return DishDTO.toDTO(dish);
    }
    public DishDTO save(Dish dish) {
        Dish dishDb = new Dish();
        dish.setName(dishDb.getName());
        dish.setDescription(dishDb.getDescription());
        dish.setIsBase(dishDb.getIsBase());
        dish.setIsModifying(dishDb.getIsModifying()    );
        dish.setIsActive(dishDb.getIsActive());
        dish.setToppings(dishDb.getToppings());
        dish.setPrice(dishDb.getPrice());
        dishRepository.save(dishDb);
        return DishDTO.toDTO(dishDb);
    }

    @Override
    public DishDTO update(DishDTO dishDTO) {
        if (dishDTO.getId() == null) {
            throw new BadRequestException("Id can't be null");
        }

        final Dish savedDish = findById(dishDTO.getId());
        savedDish.setName(dishDTO.getName());
        savedDish.setPrice(dishDTO.getPrice());
        savedDish.setDescription(dishDTO.getDescription());
        savedDish.setIsBase(dishDTO.getIsBase());
        savedDish.setIsModifying(dishDTO.getIsModifying()    );
        savedDish.setIsActive(dishDTO.getIsActive());
        savedDish.setToppings(dishDTO.getToppings());
        dishRepository.save(savedDish);

        return DishDTO.toDTO(savedDish);
    }

    public List<DishDTO> findAllNameContained(String name) {
        return dishRepository.findByNameContaining(name)
                .stream()
                .map(DishDTO::toDTO)
                .collect(Collectors.toList());
    }

}
