package com.skilldistillery.pokemon.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pokemon {
	@Id
	private int id;
	
	private String name;
	
	private String description;
	
	
	@Override
	public String toString() {
		return "Pokemon [id=" + id + ", name=" + name + "]";
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Pokemon() {
		super();
	}
	
	public Pokemon(String name, String description) {
		super();
		this.name = name;
		this.description = description;
	}
	
}
