package com.shaunabram.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the HelloWorld example.
 */
@Controller
public class HelloWorldController {

    @RequestMapping(value = "/")
    public String home() {
        System.out.println("HelloWorldController: Passing through");
        //without AppConfig view resolver
        // return "WEB-INF/views/HelloWorld.jsp";
        return "HelloWorld";
    }

    @RequestMapping(value = "/HelloWorld", method = RequestMethod.GET)
    public String greeting(@RequestParam(value="springmvcTextbox", required=false) String springmvcTextbox, Model model) {

        String greeting = "Hello " + springmvcTextbox + " from SpringMVC!";
        model.addAttribute("springmvcTextbox", greeting);
        return "HelloWorld";

    }
}