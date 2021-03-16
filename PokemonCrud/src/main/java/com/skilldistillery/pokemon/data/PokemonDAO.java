package com.skilldistillery.pokemon.data;

import java.util.List;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonDAO {

	Pokemon findById(int pokemonid);
	List<Pokemon> findAll();
	List<Pokemon> delete(Integer id);
	List<Pokemon> add(String name, String description);
	List<Pokemon> edit(Integer id, String name, String description);
}
