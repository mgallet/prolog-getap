<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recherche d'un utilisateur</title>
</head>
<body>

<h1>R�sultat</h1>
<c:if test="${empty users}">
	Aucun utilisateur trouv�.
	<br/>
	<br/>
</c:if>

	<c:if test="${not empty users}">
		<table id="search" class="tablesorter">
			<thead>
				<tr class="header">
					<th>Nom et pr�nom</th>
					<th>Login</th>
					<th>Mot de passe</th>
					<th>Role</th>
					<th>Classe</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.nom} ${user.prenom}</td>
					<td>${user.login}</td>
					<td>${user.pass}</td>
					<td>${user.role}</td>
					<td>${user.classe.nom}</td>
					<td><a href="<c:url value="/app/admin/editUser?id=${user.id}" />" ><input type="button" value="Editer"></a></td>
					<td><a href=""
						onclick="if(confirm('Voulez-vous vraiment supprimer cet utilisateur ?')){window.location.href='delUser/${user.id}';}"><input type="button" value="Supprimer"></a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</c:if>

	<div class="buttonGroup">
		
		
		<a href="<c:url value="/app/admin/index" />"style="text-decoration: none">
		 	<input type="button" value="Retour � l'index">
		</a>
		
		<a href="<c:url value="/app/admin/searchUser" />"style="text-decoration: none">
		 	<input type="button" value="Nouvelle recherche">
		</a>
		
		
	</div>

</body>
</html>