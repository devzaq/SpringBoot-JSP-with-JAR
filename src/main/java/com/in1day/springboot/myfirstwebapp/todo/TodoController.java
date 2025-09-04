package com.in1day.springboot.myfirstwebapp.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
    public String showNewTodoPage(ModelMap model){
        Todo todo = new Todo();
        todo.setTargetDate(LocalDate.now().plusDays(1));
        model.put("todo",todo);
        return "todo";
    }


//    @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
//    public String addNewTodo(
//            @SessionAttribute String username,
//            @RequestParam String description,
//            @RequestParam LocalDate targetDate,
//            @RequestParam(required = false, defaultValue = "false") boolean done
//    ){
//        todoService.addTodo(username, description, targetDate, done);
//        return "redirect:list-todos";
//    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
    public String addNewTodo(
            @SessionAttribute String username,
            @Valid Todo todo,
            BindingResult result
    ){
        if(result.hasErrors()) return "todo";
        todoService.addTodo(username, todo.getDescription(), todo.getTargetDate(), todo.isDone());
        return "redirect:list-todos";
    }

    @RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
    public String deleteTodo(@RequestParam int id){
        todoService.deleteTodoById(id);
        return "redirect:list-todos";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.GET)
    public String showUpdateTodo(ModelMap model, @RequestParam int id){
        Todo todo = todoService.findTodoById(id);
        model.put("todo", todo);
        return "todo";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.POST)
    public String updateTodo(@Valid Todo todo, BindingResult result, ModelMap model){
        if(result.hasErrors()) return "todo";
        todoService.updateTodo(todo);
        return "redirect:list-todos";
    }

}

