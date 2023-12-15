package pizza.repository;

import pizza.dto.DishDTO;
import pizza.entity.Dish;
import pizza.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface DishRepository extends JpaRepository<Dish, Long>{
    List<Dish> findAllByIsModifyingTrue();
    List<Dish> findByNameContaining(String name);
    List<User> findAllByIsActiveTrue();
}
