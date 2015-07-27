  <!-- blogpage list -->
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- link rel="stylesheet" href="/BlogSite/css/styles.css" -->

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<body>
	<div>
		<g:form controller="blogpage">
		<g:actionSubmit value="Create" action="edit"/>
		<h3>My Blog Site</h3>
		<table id="special_post_table">
			<label>List of Blogs</label><br/>
				<thead>
				</thead>
				<tbody>
					<g:each in="${blogList}" var="blog">
						<tr><td><g:link controller="postpage" action="list" id="${blog.id}">${blog.title}</g:link> </td></tr>
					</g:each>
				</tbody>
		</table>
		</g:form>
		
	</div>
</body>
</html>