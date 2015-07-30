  <!-- blogpage list -->
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
		<g:form controller="blogpage">
		<div >
			<g:actionSubmit value="Create" action="edit" class="btn btn-primary col-xs-10 col-xs-offset-1"/>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 text-center">
			<h1>My Blog Site</h1>
		</div>
	</div>	
		<table id="special_post_table" class="table text-center">
				<tbody>
					<g:each in="${blogList}" var="blog">
						<tr><td><g:link controller="postpage" action="list" id="${blog.id}" params="[title: blog.title]">${blog.title}</g:link> </td></tr>
					</g:each>
				</tbody>
		</table>
	</div>	
		
		</g:form>
		
	</div>
</body>
</html>