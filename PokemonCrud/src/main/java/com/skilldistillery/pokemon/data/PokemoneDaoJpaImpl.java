package com.skilldistillery.pokemon.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokemon.entities.Pokemon;

@Service
@Transactional
public class PokemoneDaoJpaImpl implements PokemonDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Pokemon findById(int pokemonId) {
		// TODO Auto-generated method stub
		return em.find(Pokemon.class, pokemonId);
	}

	@Override
	public List<Pokemon> findAll(){
		String jpql = "SELECT p FROM Pokemon p";
		return em.createQuery(jpql, Pokemon.class).getResultList();
		}
	
	@Override
	@Transactional 
	public List<Pokemon> delete(Integer id) {
		Pokemon pokemon = em.find(Pokemon.class, id);
		em.remove(pokemon);
		return this.findAll();
	}
	
	@Override
	@Transactional
	public List<Pokemon> add(String name, String description) {
		Pokemon pokemon = new Pokemon(name, description);
		em.persist(pokemon);
		em.flush();
		return this.findAll();
	}
	
	@Override
	@Transactional
	public List<Pokemon> edit(Integer id, String name, String description) {
		Pokemon managedPokemon = em.find(Pokemon.class, id);
		managedPokemon.setDescription(description);
		managedPokemon.setName(name);
		em.flush();
		return this.findAll();
	}
	
	

}
