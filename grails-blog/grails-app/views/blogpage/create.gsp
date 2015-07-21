
<html>
<head>
<title>Manage Post</title>
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

<body>
	<div>
		<g:form controller="blogpage" action='save'>
			<g:actionSubmit value='Create Blog' action='create' />
			<h4> Blog Title: </h4>
			<g:textField name="title" />
		</g:form>
	</div>
</body>
</html>