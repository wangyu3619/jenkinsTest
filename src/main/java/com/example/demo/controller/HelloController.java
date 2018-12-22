package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author wangyu
 * 2018/12/23 01:30
 */
@RestController
@RequestMapping("hello")
public class HelloController {

    @GetMapping("hello")
    public String hello(){
        return "Hello Jenkins!";
    }
}
