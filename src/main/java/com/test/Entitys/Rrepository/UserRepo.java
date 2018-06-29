package com.test.Entitys.Rrepository;

import com.test.Entitys.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long>
{
    User findByUsername(String username);
}
