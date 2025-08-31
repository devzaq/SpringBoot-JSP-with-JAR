package com.in1day.springboot.myfirstwebapp.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/add-todo", method = RequestMethod.GET)
    public String showNewTodoPage(){
        return "todo";
    }


    @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
    public String addNewTodo(
            ModelMap model,
//            @ModelAttribute("username") String username,
            @RequestParam String description,
            @RequestParam LocalDate targetDate,
            @RequestParam(required = false, defaultValue = "false") boolean done
    ){
        todoService.addTodo((String) model.get("username"), description, targetDate, done);
        return "redirect:list-todos";
    }

}

//            <!-- Hidden fields for id and username -->
//            <input type="hidden" name="id" value="${todo.id}"/>
//            <input type="hidden" name="username" value="${name}"/>