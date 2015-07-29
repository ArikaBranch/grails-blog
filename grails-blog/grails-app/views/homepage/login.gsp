<!-- homepage/login -->

<html>
<head>
<title>My Blog Site</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script 
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script 
src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


<style type="text/css">
	body { max-width: 100%} 

	#login{
  		margin-top: 50;
  		margin-bottom: 5px
  	}
</style>
</head>

<body> <!-- can change these later to be more user friendly and secure -->

	<div class = "row">
		<div class="col-lg-10 text-center"><h2>My Blog Site</h2></div>
	</div>

	<div>
		<g:form controller='blogpage'>
			<div class="row" id="login">
					<div class="col-sm-2 col-sm-offset-5">
						<g:textField class="form-control" name="username" placeHolder="username"/>
					</div>
			</div>
			<div class="row" if="login">
				<div class="col-sm-2 col-sm-offset-5 ">
					<g:passwordField class="form-control" name="password" placeHolder="password"/>
				</div>
			</div>
			<div>
				<g:actionSubmit class="btn btn-primary col-sm-2 col-sm-offset-5" value="Login" action="list" id="login"/>
			</div>
		</g:form>
	</div>
</body>
</html>