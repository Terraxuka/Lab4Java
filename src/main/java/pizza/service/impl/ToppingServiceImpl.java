package pizza.service.impl;

import pizza.dto.ToppingDTO;
import pizza.entity.Topping;
import pizza.exceptions.BadRequestException;
import pizza.repository.ToppingRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pizza.service.ToppingService;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ToppingServiceImpl implements ToppingService {
    private final ToppingRepository toppingRepository;

    @Override
    public ToppingDTO findDTOById(Long id) {
        Topping topping = findById(id);
        return ToppingDTO.toDTO(topping);
    }

    public Topping findById(Long id) {
        return toppingRepository.findById(id)
                .orElseThrow(() -> new BadRequestException(String.format("Topping with id {%s} not found", id)));
    }

    @Override
    public List<ToppingDTO> findAll() {
        return toppingRepository.findAll().stream()
                .map(ToppingDTO::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public void deleteById(Long id) {
        Topping topping = findById(id);
        toppingRepository.delete(topping);
    }

    @Override
    public ToppingDTO save(ToppingDTO toppingDTO) {
        Topping topping = new Topping();
        topping.setName(toppingDTO.getName());
        topping.setPrice(toppingDTO.getPrice());
        topping.setIsActive(toppingDTO.getIsActive());
        toppingRepository.save(topping);
        return ToppingDTO.toDTO(topping);
    }

    @Override
    public ToppingDTO update(ToppingDTO toppingDTO) {
        if (toppingDTO.getId() == null) {
            throw new BadRequestException("Id can't be null");
        }

        Topping savedTopping = findById(toppingDTO.getId());

        savedTopping.setName(toppingDTO.getName());
        savedTopping.setPrice(toppingDTO.getPrice());
        savedTopping.setIsActive(toppingDTO.getIsActive());
        toppingRepository.save(savedTopping);

        return ToppingDTO.toDTO(savedTopping);
    }
}
