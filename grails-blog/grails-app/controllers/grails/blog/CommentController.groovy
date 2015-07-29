package grails.blog


class CommentController {

    def addComment() {
    	Postpage post = Postpage.get(params.postId)
    	def comment = new Comment(post:post, 
    							  author:params.author, 
    							  comment:params.comment).save(failOnError: true);
    	render(template:"commentTemplate", model:[comment:comment])
    }
}
