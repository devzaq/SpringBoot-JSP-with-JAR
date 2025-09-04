package com.in1day.springboot.myfirstwebapp.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {

    private static List<Todo> todos;
    private static int id = 1;
    static {
        todos = new ArrayList<>();
        todos.add(
                new Todo(id++,
                        "Jack",
                        "Complete the Todo Project",
                        LocalDate.now().plusDays(2),
                        false
                )
        );
        todos.add(
                new Todo(id++,
                        "Jack",
                        "Learn Docker",
                        LocalDate.now().plusDays(3),
                        false
                )
        );
        todos.add(
                new Todo(id++,
                        "Jack",
                        "Learn AWS",
                        LocalDate.now().plusDays(5),
                        false
                )
        );
    }

    public List<Todo> findByUser(String username){
        return todos;
    }

    public void addTodo(String username, String description, LocalDate date, boolean isDone){
        Todo todo = new Todo(id++,username,description, date, isDone );
        todos.add(todo);
    }


    public void deleteTodoById(int id) {
//        todos = new ArrayList<>(todos.stream().filter(todo-> todo.getId() != id).toList());
        todos.removeIf(todo-> todo.getId() == id);
    }

    public Todo findTodoById(int id) {
        return todos.stream().filter(t-> t.getId() == id).findFirst().orElseThrow();

    }

    public void updateTodo(Todo todo) {
        deleteTodoById(todo.getId());
        todos.add(todo);
    }
}
