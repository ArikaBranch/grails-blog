<!-- postpage view -->
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
		

		<div>
			<h3>${post.title}</h3>
		</div>
		<g:form controller="postpage">
			<g:link controller="postpage" action="edit" id="${post.id}"><button type="button">Edit</button></g:link><br>
			<div id="post_content">
				 ${post.content}
			</div> <br>

			<g:actionSubmit value="Create Comment" action="" />
			<table id="special_comment_table">
				<th>List of Comments</th>
			</table><br>

			<h5>Create Comment</h5><br>
			<label>Author:  </label>
			<g:textField name="comment_author" /><br>
			<label>Comment:  </label>
			<g:textArea name="comment_area" />
		</g:form>
		
	</div>
</body>
</html>