package com.yc.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController{

    @GetMapping("/")
    public String home(){
        return "index";
    }

    @GetMapping("/menu")
    public String menuList(){
        return "menuList";
    }
    
}