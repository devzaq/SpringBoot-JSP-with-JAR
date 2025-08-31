package com.in1day.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate(String username, String password){
        return username.equalsIgnoreCase("Jack") && password.equals("dummy");
    }

}
