package com.satendra.permission.controller;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.Collection;

@RestController
@RequestMapping(produces = MediaType.APPLICATION_JSON_VALUE)
public class TestController {

    @GetMapping("/test")
    public Collection<String> displayName(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return Arrays.asList("satendra", "anil");
    }

    @GetMapping("/test1")
    public Collection<String> displayName1(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return Arrays.asList("satendra", "anil");
    }
}
