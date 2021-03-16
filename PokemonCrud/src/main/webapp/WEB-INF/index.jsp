<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pokemon</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
	body {
		background-color: black;
	}
	h1 {
		color: white;
	}
	header {
		display: flex;
		justify-content: center;
	}
	.add {
		margin-bottom: 20px;
	}
	form {
		display: flex;
		justify-content: space-around;
	}
	.checkbox {
		position: relative;
	}
	.checkbox input {
		opacity: 0;
		width: 100%;
		height: 100%;
		position: absolute;
		top: 0;
		left: 0;
	}
</style>
<body class="container-fluid">
	<header>
		<h1>Pokemon Database</h1>
	</header>
	<section class="add">
		<form action="add.do" method="GET">
			<div class="input-group">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-sm">Name</span>
			  </div>
			  <input class="form-control" aria-label="With textarea" name="name">
			</div>
			<div class="input-group">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-sm">Description</span>
			  </div>
			  <input class="form-control" aria-label="With textarea" name="description">
			</div>
			<button class="btn btn-success" type="submit">Add</button>
		</form>
	</section>
	<section>
		<table class="table  table-dark table-striped table-hover">
			<thead class="table-dark">
			  <th scope="col">id</th>
			  <th scope="col">name</th>
			  <th scope="col">Description</th>
			</thead>
			<tbody>
				<c:forEach var="p" items="${pokemonList}">
					<tr>
						<td scope="row">${p.id}</td>
						<td><a href="getPokemon.do?pid=${p.id}">${p.name}</a></td>
						<td>${p.description}</td>
						<td>
							<form action="delete.do" method="GET">
								<input type="hidden" name="id" value="${p.id}">
								<button class="btn btn-danger" type="submit">Delete</button>
							</form>
						</td>
					</tr>
					<tr class="edit-form">
						<td colspan="4">
							<form action="edit.do" method="GET">
								<input type="hidden" value="${p.id}" name="id">
								<div class="input-group">
								  <div class="input-group-prepend">
								    <span class="input-group-text" id="inputGroup-sizing-sm">Name</span>
								  </div>
								  <input class="form-control" aria-label="With textarea" name="name">
								</div>
								<div class="input-group">
								  <div class="input-group-prepend">
								    <span class="input-group-text" id="inputGroup-sizing-sm">Description</span>
								  </div>
								  <input class="form-control" aria-label="With textarea" name="description">
								</div>
								<button class="btn btn-primary"  type="submit">Edit</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
</body>
</html>