<!-- blogpage edit -->
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- link rel="stylesheet" href="/BlogSite/css/styles.css" -->

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="row">
		<div class="col-xs-12 text-center">
			<h1>My Blog Site</h1>
		</div>
	</div>
		<g:form controller='blogpage' action="save">
			<div class="row">
				<div class="col-xs-4 col-xs-offset-4">
					<g:textField placeHolder="New Blog Title" name="blogTitle" class="form-control"/>
				</div>
				<g:actionSubmit value="Submit" action="save" class="btn btn-primary"/>
			</div>
			
		</g:form>	
	</div>
</body>
</html>