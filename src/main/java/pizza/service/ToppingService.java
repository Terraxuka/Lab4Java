package pizza.service;

import pizza.dto.ToppingDTO;
import pizza.entity.Topping;

import java.util.List;

public interface ToppingService {
    ToppingDTO findDTOById(Long id);
    List<ToppingDTO> findAll();
    void deleteById(Long id);
    ToppingDTO save(ToppingDTO order);
    ToppingDTO update(ToppingDTO order);

    Topping findById(Long toppingId);
}
