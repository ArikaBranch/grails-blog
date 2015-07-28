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
</head>
<style type="text/css">
	img { max-width: 100% }
</style>

<body>
	<div>
		<g:form controller="postpage" action="search">
			<g:link contoller="postpage" action="edit" params="[blogId:"${blog.id}"]"><button type=button>Create New Post</button></g:link>
			<h3>${blog.title}</h3>
			<g:hiddenField name="blogId" value="${blog.id}"/>
			<g:textField name="search" value="" />
			<g:actionSubmit value="Search" action="search"/>
		</g:form>
			<table id="special_post_table">
				<label>List of Posts</label><br/>
				<thead>
					<tr>Title</tr>
					<tr>Teaser</tr>
					<tr>LastUpdated</tr>
				</thead>
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
	</div>
</body>
</html>

