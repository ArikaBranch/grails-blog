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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>

<body>
	<div>
		<div>
			<h3>${post.title}</h3>
		</div>
		<g:link controller="postpage" action="edit" id="${post.id}"><button type="button">Edit</button></g:link><br/>
		<div id="post_content">
			${post.content}
		</div><br/>

		<!--g:actionSubmit value="Create Comment" action="" / -->
		<table id="special_comment_table">
			<thead>List of Comments</thead>
			<tbody>
				<g:each in="${comments}" var="comment">
						<tr>
							<td>${comment.author}</td>
							<td>${comment.comment}</td>		
						</tr>
					</g:each>
				<div id="comment_list"></div>
			</tbody>
		</table><br/>

		<h5>Create Comment</h5><br/>

		<g:form  action="addComment">
			<g:hiddenField name="postId" value="${post.id}"/>
			Author: <input type="text" name="author"/><br/>
			Comment: <textArea type="text" name="comment"/></textArea><br/>
			<g:submitToRemote value='Add Comment'url="[controller: 'comment', action:'addComment']" update="comment_list"/>
		</g:form>	
	</div>
</body>
</html>