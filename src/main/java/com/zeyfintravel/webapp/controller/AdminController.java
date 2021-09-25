package com.zeyfintravel.webapp.controller;



import com.zeyfintravel.webapp.dao.entity.Role;
import com.zeyfintravel.webapp.dao.entity.User;
import com.zeyfintravel.webapp.dao.repository.RoleRepository;
import com.zeyfintravel.webapp.service.UserService;
import com.zeyfintravel.webapp.utils.UserUtil;
import com.zeyfintravel.webapp.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashSet;
import java.util.Set;


@Controller

@RequestMapping("/admin")
public class AdminController {

    String site_name = "ZEYFINTRAVEL : ";
    @Autowired
    private UserService userService;

    // @Autowired
     //private SecurityService securityService;*/
    //@Autowired
   // ImageEntitytService imageEntitytService;
    @Autowired
    RoleRepository roleRepository;

    @Autowired
    private UserValidator userValidator;


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "admin/login";
    }


    @RequestMapping(value = {"/dashboard", "/"}, method = RequestMethod.GET)
    public ModelAndView registration() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("title", site_name + " Dashboard");

        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());
        modelAndView.addObject("user", user);
        modelAndView.setViewName("admin/dashboard");
        return modelAndView;
    }


    //*--------------------------USER OPERATIONS
    @RequestMapping(value = {"/users"}, method = RequestMethod.GET)
    public ModelAndView users() {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());

        modelAndView.addObject("user", user);
        modelAndView.addObject("title", site_name + "Users  ");

        modelAndView.addObject("users", userService.findAll());


        modelAndView.setViewName("admin/users");
        return modelAndView;
    }


    @RequestMapping(value = {"/user/add"}, method = RequestMethod.GET)
    public ModelAndView userAdd() {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());

        modelAndView.addObject("user", user);
        modelAndView.addObject("title", site_name + "Users : Add");


        // modelAndView.addObject("users", userService.findAll());
        modelAndView.addObject("userForm", new User());


        modelAndView.setViewName("admin/user-opts");
        return modelAndView;
    }


    @RequestMapping(value = {"/user/edit/{id}"}, method = RequestMethod.GET)
    public ModelAndView userEdit(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());

        modelAndView.addObject("user", user);
        modelAndView.addObject("title", site_name + "Users : Add");


        modelAndView.addObject("users", userService.findAll());
        modelAndView.addObject("userForm", userService.findOne(id));


        modelAndView.setViewName("admin/user-opts");
        return modelAndView;
    }


    @RequestMapping(value = {"/user/delete/{id}"}, method = RequestMethod.GET)
    public ModelAndView userDelete(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());

        User user1 = userService.findOne(id);
        if (!(user.equals(user1))) {
            userService.delete(user1);
        }


        modelAndView.setViewName("redirect:/admin/users");
        return modelAndView;
    }

    @RequestMapping(value = "/user/save", method = RequestMethod.POST)
    public String userSave(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);


        if (bindingResult.hasErrors()) {
            return "admin/user-opts";
        }

        Role role = roleRepository.getOne(1L);

        Set<Role> setRole = new HashSet<>();
        setRole.add(role);

        userForm.setRoles(setRole);
        userService.save(userForm);

        //   securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/admin/users";
    }





}

