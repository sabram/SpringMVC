package com.shaunabram.springmvc.controller;

import com.shaunabram.springmvc.service.HelloWorldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the HelloWorld example.
 */
@Controller
@SuppressWarnings("unused")
public class HelloWorldController {

    private final HelloWorldService helloWorldService;

    @Autowired
    public HelloWorldController(HelloWorldService helloWorldService) {
        this.helloWorldService = helloWorldService;
    }

    @RequestMapping(value = "/")
    public String home() {
        System.out.println("HelloWorldController: Passing through");
        //without view resolver
        // return "WEB-INF/views/HelloWorld.jsp";
        return "HelloWorld";
    }

    @RequestMapping(value = "/HelloWorld", method = RequestMethod.GET)
    public String greeting(@RequestParam(value="msg", required=false) String msg, Model model) {
        String greeting = helloWorldService.getGreeting(msg);
        model.addAttribute("msg", greeting);
        return "HelloWorld";
    }
}
