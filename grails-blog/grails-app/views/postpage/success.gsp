<!-- postpage success -->
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<body>
	<div>
		<p id="success">
			Your ${post.title} was an unmitigated success!
		</p>
			<g:link value="OK" url="[controller:'postpage', action:'list']" ><button type="button" id="ok">OK</button></g:link>
		
	</div>
</body>
</html>