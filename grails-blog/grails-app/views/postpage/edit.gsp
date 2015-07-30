<!-- postpage edit -->
<html>
<head>
<title></title>
<!--<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">


<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>

<body>
	<g:form controller="postpage">
	<div class="row">
			<g:actionSubmit id="submit_new_post" value="Submit" action="save" class="btn btn-primary col-xs-10 col-xs-offset-1"></g:actionSubmit>
	</div>
	<div class="row">
		<div class="col-xs-12">
			
		</div>
	</div>
	<div class="row">
		<g:hiddenField name="blogId" value="${post.blog.id}"/>
		<g:hiddenField name="id" value="${post.id}"/>
		<div class="col-xs-6 col-xs-offset-2">
			Title: <g:textField name="postTitle" value="${post.title}" class="form-control"/>
		</div>
	</div>
	<div class="row">	
		<div class="col-xs-8 col-xs-offset-2">
			Teaser: <g:textField name="postTeaser" value="${post.teaser}" class="form-control"/>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-8 col-xs-offset-2">
			Content: <g:textArea name="post" value="${post.content}" rows="5" cols="40" class="form-control"/>
		</div>
	</div>
	</g:form>
</body>
</html>