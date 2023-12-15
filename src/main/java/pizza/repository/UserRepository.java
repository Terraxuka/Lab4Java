package pizza.repository;

import pizza.entity.Order;
import pizza.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findOneByNameAndSurname(String name, String surname);
    List<Order> findAllOrdersById(Long id);
    List<User> findAllByIsActiveTrue();
}
