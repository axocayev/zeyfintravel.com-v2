package com.zeyfintravel.webapp.dao.repository;



import com.zeyfintravel.webapp.dao.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    User findByEmail(String email);
}
