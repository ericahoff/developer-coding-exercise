package com.vargo.birds;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;



import java.util.List;

// 3. Using Spring Boot(or Spring MVC) create a Controller that would have two methods:

@Controller
@CrossOrigin
public class BirdController {

    private final BirdService birdService;

    public BirdController(BirdService birdService) {
        this.birdService = birdService;
    }

    // 3.1. Display a form
    @GetMapping("/form")
    public String showForm() {
        return "form";
    }

    // 3.2. Respond to a request with the DB entity key as a Path Parameter
    @GetMapping("/birds/{id}/habitats")
    @ResponseBody
    public List<String> getHabitats(@PathVariable int id) {
        return birdService.getHabitatsForBird(id);
    }

    // Added so the bird name could be displayed on the page
    @GetMapping("/birds/{id}")
    @ResponseBody
    public Bird getBird(@PathVariable int id) {
        Bird bird = birdService.getBirdById(id);
        if (bird == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Bird not found");
        }
        return bird;
    }

}
