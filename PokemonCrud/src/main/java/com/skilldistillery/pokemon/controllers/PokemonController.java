package com.skilldistillery.pokemon.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.pokemon.data.PokemonDAO;
import com.skilldistillery.pokemon.entities.Pokemon;

@Controller
public class PokemonController {
	
	@Autowired
	private PokemonDAO dao;
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		List<Pokemon> pokemon = dao.findAll();
		model.addAttribute("pokemonList", pokemon);
		return "index";
	}
	
	@RequestMapping(path = "delete.do")
	public String delete(@RequestParam ("id") Integer id, Model model) {
		List<Pokemon> pokemon = dao.delete(id);
		model.addAttribute("pokemonList", pokemon);
		return "index";
		
	}
	
	@RequestMapping(path = "add.do")
	public String delete(@RequestParam ("name") String name, @RequestParam ("description") String description, Model model) {
		List<Pokemon> pokemon = dao.add(name, description);
		model.addAttribute("pokemonList", pokemon);
		return "index";
		
	}
	
	@RequestMapping(path = "edit.do")
	public String edit(@RequestParam ("id") Integer id, @RequestParam ("name") String name, @RequestParam ("description") String description, Model model) {
		List<Pokemon> pokemon = dao.edit(id, name, description);
		model.addAttribute("pokemonList", pokemon);
		return "index";
		
	}

}
