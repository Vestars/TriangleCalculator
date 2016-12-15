package com.eutacompany.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class CalculatorController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String calculatorPage() {
        return "triangle";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String calculateTriangle(Model model, double a, double b) {
        model.addAttribute("a", a);
        model.addAttribute("b", b);
        double c = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
        model.addAttribute("c", c);

        model.addAttribute("a_error", "a must be > 0");
        model.addAttribute("b_error", "b must be > 0");
        model.addAttribute("empty_fields", "Fields can't be empty");

        return "triangle";
    }
}
