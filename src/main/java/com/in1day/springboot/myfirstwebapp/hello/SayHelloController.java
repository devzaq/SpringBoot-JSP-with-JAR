package com.in1day.springboot.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {

    @RequestMapping("say-hello")
    @ResponseBody
    public String sayHello() {
        return "Hello! what are you learning today.";
    }

//    Directory: C:\Users\aajjh\Desktop\Spring\myfirstwebapp\src\main\resources\META-INF\resources\WEB-INF\jsp



    @RequestMapping("say-hello-jsp")
    public String sayHelloJsp() {
        return "sayHello";
    }
}
