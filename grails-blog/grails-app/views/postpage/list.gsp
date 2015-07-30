<!-- postpage list -->
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
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
	<div class="row">
		<g:form controller="postpage" action="search" params="[id:"${blog.id}"]">
			<g:link contoller="postpage" action="edit" params="[blogId:"${blog.id}"]"><button type="button" class="btn btn-primary col-xs-10 col-xs-offset-1">Create New Post</button></g:link>
			<h3 class="col-xs-12 text-center">${blog.title}</h3>
			<g:hiddenField name="blogId" value="${blog.id}"/>
			<div class="col-xs-4 col-xs-offset-4">
				<g:textField name="search" value="" class="form-control"/>
			</div>
			<div class="col-xs-2">
				<g:actionSubmit value="Search" action="search" class="btn"/>
			</div>	
		</g:form>
		<div class="col-xs-12">
			<table id="special_post_table" class="table text-center">
				<tbody>
					<g:each in="${postList}" var="post">
						<tr>
							<td><g:link controller="postpage" action="view" id="${post.id}" params="[title: post.title, content:post.content]">${post.title}</g:link></td>
							<td>${post.teaser}</td>
							<td>${post.lastUpdated}</td>		 
						</tr>
					</g:each>
				</tbody>
			</table>
			<g:paginate total="${postCount}" max="10" params="[id:"${blog.id}"]"/>
		</div>	
	</div>
</body>
</html>

