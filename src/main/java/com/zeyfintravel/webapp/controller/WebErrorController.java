package com.zeyfintravel.webapp.controller;


import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;

@Controller
public class WebErrorController implements ErrorController {


    @RequestMapping("/error")
    public ModelAndView handleError(HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();

        if (response.getStatus() == HttpStatus.NOT_FOUND.value()) {
            modelAndView.addObject("errmsg","Page not found!");

        } else if (response.getStatus() == HttpStatus.FORBIDDEN.value()) {
            modelAndView.addObject("errmsg","Access forbidden!");

        } else if (response.getStatus() == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
            modelAndView.addObject("errmsg","Error occured on server side!!");
        } else {

        }

        modelAndView.setViewName("error");


        return modelAndView;
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }

}
