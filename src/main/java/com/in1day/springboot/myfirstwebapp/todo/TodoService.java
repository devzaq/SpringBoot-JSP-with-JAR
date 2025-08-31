package com.in1day.springboot.myfirstwebapp.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {

    private static final List<Todo> todos;

    static {
        todos = new ArrayList<>();
        todos.add(
                new Todo(1,
                        "Jack",
                        "Complete the Todo Project",
                        LocalDate.now().plusDays(2),
                        false
                )
        );
        todos.add(
                new Todo(2,
                        "Jack",
                        "Learn Docker",
                        LocalDate.now().plusDays(3),
                        false
                )
        );
        todos.add(
                new Todo(3,
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
