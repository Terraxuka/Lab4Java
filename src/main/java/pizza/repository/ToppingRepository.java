package pizza.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pizza.entity.Topping;

public interface ToppingRepository extends JpaRepository<Topping, Long> {
}
