package com.zeyfintravel.webapp.service;





import com.zeyfintravel.webapp.dao.entity.User;

import java.util.List;

public interface UserService {
    void save(User user);

    User findByUsername(String username);

    User findByEmail(String email);
    List<User> findAll();
    User findOne(long id);
    void delete(User user);
}
