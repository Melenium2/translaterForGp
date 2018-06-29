package com.test.Services;

import com.test.Entitys.Rrepository.UserRepo;
import com.test.Entitys.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.configurers.userdetails.UserDetailsServiceConfigurer;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService
{
    @Autowired
    private UserRepo userRepo;

    public void addNewUser(User user)
    {
        userRepo.save(user);
    }

    public String ifUserAlreadyExist(User user)
    {
        User newUser = userRepo.findByUsername(user.getUsername());
        if (newUser != null)
        {
            return "User already exist!";
        }

        if (user.getPassword().contains(" ")
                || user.getPassword().isEmpty()
                || user.getUsername().isEmpty()
                || user.getUsername().contains(" "))
        {
            return "Incorrect username or password ";
        }

        return null;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException
    {
        System.out.println(username);
        return userRepo.findByUsername(username);
    }
}
