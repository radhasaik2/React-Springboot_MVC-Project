package com.sat.tmf.movietkt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeRestController {

    @GetMapping("/")
    @ResponseBody
    public String home() {
        return "Movie Ticket Booking API is running! Use /api/movies to access movies.";
    }
}