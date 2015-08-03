<!-- postpage view -->
<html>
<head>
<title></title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
	p {
    	word-wrap: break-word;
	}
</style>
</head>

<body>
	<div class="row">	
		<div class="col-xs-12 text-center">
			<h1>${post.title}</h1>
		</div>
	</div>
	<div class="row">
		<g:link controller="postpage" action="edit" id="${post.id}"><button type="button" class="btn btn-primary col-xs-4 col-xs-offset-4">Edit</button></g:link>
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
		<div id="add_comment_location">
			<g:each in="${comments}" var="comment" status="i">
				<div class="row">	
					<div class="col-xs-12">
						<div id="comment${i}_author" class="col-xs-2 col-xs-offset-3">
							Author: ${comment?.author}
						</div> 
						<div class="col-xs-6  col-xs-offset-1">
							<p>
								Comment: ${comment?.comment}
							</p>
						</div>
						<br/>
					</div>
				</div>
			</g:each>
		</div>
		<hr/>		
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
				<g:submitToRemote id="add_comment" value='Add Comment' url="[controller: 'comment', action:'addComment']" update="add_comment_location" class="btn col-xs-offset-1"/>
			</div>
		</div>
		</g:form>	
	</div>
</body>
</html>