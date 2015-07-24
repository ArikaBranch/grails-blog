<!-- homepage/login -->

<html>
<head>
<title>My Blog Site</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/BlogSite/css/styles.css">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<body> <!-- can change these later to be more user friendly and secure -->

	<h3>My Blog Site</h3>
	<div class="login">
		<g:form controller='blogpage'>
			<label for="username">Username:</label>
			<g:textField name="username" value="username" /> 
			<br/>
			<label for='password'>Password: </label>
			<g:passwordField name="password" value="password" />
			<br/>
			<g:actionSubmit value="Login" action="list" id="login"/>
		</g:form>
	</div>
</body>
</html>