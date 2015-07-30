package grails.blog


class CommentController {

    def addComment() {
    	//TODO: Should Save Post instead of comment
    	//add comment to post before save
    	Postpage post = Postpage.get(params.postId)
    	def comment = new Comment(post:post, 
    							  author:params.author, 
    							  comment:params.comment)
    	post.addToComments(comment).save(failOnError:true, flush:true)
    	render(template:"commentTemplate", model:[comment:comment])
    }
}
