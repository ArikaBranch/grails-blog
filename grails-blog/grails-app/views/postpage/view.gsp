<!-- postpage view -->
<html>
<head>
<title></title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<g:javascript library="jquery" />
</head>

<body>
	<div>
		

		<div>
			<h3>${post.title}</h3>
		</div>
			<g:link controller="postpage" action="edit" id="${post.id}"><button type="button">Edit</button></g:link><br>
			<div id="post_content">
				 ${post.content}
			</div> <br>

			<g:formRemote name="commentForm" update="renderedComments" url="[controller:'postpage', action:'showResults']">
				<label for="author">Author: </label>
				<input type="text" name="author" ></input><br/>
				<label for="author">Comment: </label><br/>
				<textarea name="comment"></textarea><br/>
				<g:submitButton name="update" value="Add Comment">
				</g:submitButton>			
			</g:formRemote>

			<div id="renderedComments">
				<g:render template="commentTemplate"></g:render>
			</div>		
	</div>
</body>
</html>