package grails.blog


class CommentController {

    def addComment() {
    	//TODO: Should Save Post instead of comment
    	//add comment to post before save
    	Postpage post = Postpage.get(params.postId)
    	def comment = new Comment(post:post, 
    							  author:params.author, 
    							  comment:params.comment).save(failOnError: true)
    	post.addToComments(comment).save(flush:true, failOnError: true)
    	render(template:"commentTemplate", model:[comment:comment])
    }
}
