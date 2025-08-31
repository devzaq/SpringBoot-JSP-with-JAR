package com.in1day.springboot.myfirstwebapp.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("username")
public class TodoController {

    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping(value = "/list-todos", method = RequestMethod.GET)
    public String gotoTodo(ModelMap model){
        List<Todo> todos = todoService.findByUser("");
        model.put("todos", todos);
        return "listTodos";
    }

}

//private int id;
//private String username;
//private String description;
//private LocalDate targetDate;
//private boolean done;