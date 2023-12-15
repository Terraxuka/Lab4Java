package pizza.entity;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.util.List;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String description;
    @Column
    private BigDecimal price = BigDecimal.ZERO;
    @Column
    private Boolean isActive = Boolean.TRUE;
    @Column
    private Boolean isDone = Boolean.FALSE;
    @Column
    private Boolean isPaid = Boolean.FALSE;
    @Column
    private Boolean isDelivered = Boolean.FALSE;
    @ManyToMany
    private List<Dish> dishes;
}
