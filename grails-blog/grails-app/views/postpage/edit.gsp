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
</head>

<body>
	<div>
		<g:form controller="postpage">
			<g:hiddenField name="blogId" value="${post.blog.id}"/>
			<g:hiddenField name="id" value="${post.id}"/>
			<div>
				<label> Post Title:  <label>
				<g:textField name="postTitle" value="${post.title}"/><br/>
			</div>
			<div>
				<label> Post Teaser:  <label>
				<g:textField name="postTeaser" value="${post.teaser}"/><br/>
			</div>
			<div>
				<label> Post Content: </label>
				<g:textArea name="post" value="${post.content}" rows="5" cols="40"/>
			</div>
			<g:actionSubmit id="submit_new_post" value="Submit" action="save">
			</g:actionSubmit>
		</g:form>
	</div>
</body>
</html>