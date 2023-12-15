package pizza.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pizza.entity.Dish;
import pizza.entity.Order;
import pizza.entity.User;

import java.util.List;
import java.util.Optional;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findAllByIsActiveTrueAndIsDoneFalse();
}
