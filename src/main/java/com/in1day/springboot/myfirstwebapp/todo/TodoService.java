package com.in1day.springboot.myfirstwebapp.todo;

import java.time.LocalDate;
import java.util.List;

public class TodoService {

    private static List<Todo> todos;

    static {
        todos.add(
                new Todo(1,
                        "Jack",
                        "Complete the Todo Project",
                        LocalDate.now().plusDays(2),
                        false
                )
        );
        todos.add(
                new Todo(1,
                        "Jack",
                        "Learn Docker",
                        LocalDate.now().plusDays(3),
                        false
                )
        );
        todos.add(
                new Todo(1,
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

}
