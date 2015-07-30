<!-- postpage view -->
<html>
<head>
<title></title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">

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
	<div class="row">
		
		<g:link controller="postpage" action="edit" id="${post.id}"><button type="button" class="btn btn-primary col-xs-10 col-xs-offset-1">Edit</button></g:link>
	</div>
	<div class="row">	
		<div class="col-xs-12 text-center">
			<h1>${post.title}</h1>
		</div>
	</div>
	<div class="row">
		<div  id="post_content" class="col-xs-12 text-center">
			${post.content}
		</div>
	</div>
	<div class="text-center">
		<hr/>
		<h3>Comments</h3>
		<hr/>
	</div>
		<div id="add_comment"></div>
		<g:each in="${comments}" var="comment">
			<div class="row">	
				<div class="col-xs-12">
					<div class="col-xs-2 col-xs-offset-3">
						${comment?.author}
					</div> 
					<div class="col-xs-6  col-xs-offset-1">
						${comment?.comment}
					</div>
					<br/>
					<hr/>
				</div>
			</div>
		</g:each>	
		<g:form  action="addComment">
			<g:hiddenField name="postId" value="${post.id}"/>
		<div class="row">	
			<div class="col-xs-4 col-xs-offset-1">
				Author: <input type="text" name="author" class="form-control"/>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-10 col-xs-offset-1">
				Comment: <textArea type="text" name="comment" class="form-control"/></textArea><br/>
			</div>
		</div>
		<div class="row">
			<div>
				<g:submitToRemote value='Add Comment'url="[controller: 'comment', action:'addComment']" update="add_comment" class="btn col-xs-offset-1"/>
			</div>
		</div>
		</g:form>	
	</div>
</body>
</html>