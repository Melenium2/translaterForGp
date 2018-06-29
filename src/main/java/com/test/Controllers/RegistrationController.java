package com.test.Controllers;

import com.test.Entitys.User;
import com.test.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.Console;

@Controller
@RequestMapping("/registration")
public class RegistrationController
{
    @Autowired
    private UserService userService;

    @GetMapping
    public String registrPage()
    {
        return "registrationPage";
    }

    @PostMapping
    public String registrNewUser(User user, Model model)
    {

        String error = userService.ifUserAlreadyExist(user);
        if (error != null)
        {
            model.addAttribute("message", error);
        }
        else
        {
            userService.addNewUser(user);
            return "redirect:loginPage";
        }
        return "registrationPage";
    }
}
