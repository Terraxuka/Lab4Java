    package pizza.entity;

    import jakarta.persistence.*;
    import lombok.*;

    import java.math.BigDecimal;
    import java.util.List;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Entity
    @Table(name = "users")
    public class User {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;
        @Column
        private String name;
        @Column
        private String surname;
        @Column
        private BigDecimal balance = BigDecimal.ZERO;
        @Column
        private Boolean isActive = Boolean.TRUE;
        @OneToMany
        private List<Order> orders;
    }
