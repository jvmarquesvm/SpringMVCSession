package com.padrao.spring.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.padrao.spring.entity.Product;

@Controller
@RequestMapping(value="produto")
public class ProductController {

		
	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpSession session) {
		session.setAttribute("age", 20);
		session.setAttribute("username", "acc1");
		
		//Endereçando um objeto
		Product produto = new Product("p01", "Nome1", 20);
		session.setAttribute("produto", produto);
		
		//Endereçando uma lista de objetos
		List<Product> produtos = new ArrayList<>();
		produtos.add(new Product("p01", "Nome1", 20));
		produtos.add(new Product("p02", "Nome2", 30));
		produtos.add(new Product("p03", "Nome3", 40));
		session.setAttribute("produtos", produtos);
		
		return "product/index";
	}
}
