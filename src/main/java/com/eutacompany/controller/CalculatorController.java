package com.eutacompany.controller;

import com.eutacompany.figure.Triangle;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.processing.SupportedSourceVersion;
import java.io.IOException;
import java.util.Properties;

@Controller
@RequestMapping("/")
public class CalculatorController {

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public ModelAndView calculatorPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("triangle",new Triangle());
        modelAndView.setViewName("triangle");
        return modelAndView;
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public ModelAndView calculateTriangle(@ModelAttribute("triangle") Triangle triangle) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("triangle");
        modelAndView.addObject("triangle", triangle);
        int c = triangle.hypotenuse(triangle.getA(),triangle.getB());
        return modelAndView;
    }
}
