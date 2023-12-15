package pizza.service.impl;

import pizza.dto.UserDTO;
import pizza.entity.User;
import pizza.exceptions.BadRequestException;
import pizza.repository.UserRepository;
import pizza.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    @Override
    public UserDTO findDTOById(final Long id) {
        final User user = findById(id);

        return UserDTO.toDTO(user);
    }

    private User findById(final Long id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new BadRequestException(String.format("User with id {%s} not found", id)));
    }


    @Override
    public List<UserDTO> findAll() {
        return userRepository.findAllByIsActiveTrue().stream()
                .map(UserDTO::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public UserDTO save(final UserDTO userDTO) {
        final User user = new User();

        user.setName(userDTO.getName());
        user.setSurname(userDTO.getSurname());
        userRepository.save(user);

        return UserDTO.toDTO(user);
    }

    @Override
    public UserDTO update(UserDTO userDTO) {
        if (userDTO.getId() == null) {
            throw new BadRequestException("Id can't be null");
        }

        final User savedUser = findById(userDTO.getId());

        savedUser.setName(userDTO.getName());
        savedUser.setSurname(userDTO.getSurname());
        userRepository.save(savedUser);

        return UserDTO.toDTO(savedUser);
    }

    @Override
    public void deleteById(Long id) {
        User user = findById(id);
        user.setIsActive(Boolean.FALSE);
        userRepository.save(user);
    }

    @Override
    public void addMoney(Long userId, BigDecimal money) {
        User user = findById(userId);

        user.setBalance(user.getBalance().add(money));
        userRepository.save(user);
    }

    @Override
    public void removeMoney(Long userId, BigDecimal money) {
        User user = findById(userId);
        user.setBalance(user.getBalance().subtract(money));
        userRepository.save(user);
    }


    @Override
    public UserDTO searchByNameAndSurname(String name, String surname) {
        return userRepository.findOneByNameAndSurname(name, surname)
                .map(UserDTO::toDTO)
                .orElseThrow(() -> new BadRequestException(String.format("User with name {%s} and surname {%s} not found", name, surname)));
    }
}
