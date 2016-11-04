<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Connexion</title>
<link rel="stylesheet"
	href="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0/angular-material.min.css">
<link rel="stylesheet"
	href="https://code.getmdl.io/1.2.1/material.indigo-deep_orange.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<link rel="stylesheet" href="<c:url value='/static/css/app.css' />" />
<link rel="stylesheet" href="<c:url value='/static/css/index.css' />" />
</head>
<body ng-app="ma" ng-cloak>
	<section layout="row" flex style="height: 100%;">
	<div layout="row" flex="30">
	</div>
	<div layout="row" flex="40">
		<div layout="column" flex></div>
		<div layout="column" flex="100">
			<md-card class="md-whiteframe-16dp"> 
				<md-card-header> 
					<md-card-avatar>
						<img src="static/img/logo.jpg" /> 
					</md-card-avatar> 
					<md-card-header-text>
						<span class="md-title">MyAccounts</span> 
						<span class="md-subhead">Gestion personnalisée</span>
					</md-card-header-text> 
				</md-card-header> 
				<img src="static/img/argent.jpg" class="md-card-image" alt="Washed Out">
				<md-card-title> 
					<md-card-title-text>
						<span class="md-headline">Espace de connexion</span> 
					</md-card-title-text> 
				</md-card-title> 
				<md-card-content>
					<md-input-container class="md-block" flex-gt-sm>
		            	<label>Pseudo</label>
		            	<input ng-model="user.pseudo">
		          	</md-input-container>
		          	<md-input-container class="md-block" flex-gt-sm>
		            	<label>Password</label>
		            	<input ng-model="user.password" type="password">
		          	</md-input-container>
				</md-card-content> 
				<md-card-actions layout="row" layout-align="end center">
		          	<md-button>Valider</md-button>
		        </md-card-actions>
			</md-card>
		</div>
		<div layout="column" flex></div>
	</div>
	<div layout="row" flex="30">
	</div>		
	</section>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-aria.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-messages.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0/angular-material.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/angular-filter/0.5.8/angular-filter.min.js"></script>
	<script src="<c:url value='/static/js/app.js' />"></script>
</body>
</html>