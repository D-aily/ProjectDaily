package com.daily.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import lombok.extern.log4j.Log4j;
import service.CartService;

@Log4j
@Controller
public class CartController {
	
	@Autowired
	CartService service;
	
	
	
		
}
