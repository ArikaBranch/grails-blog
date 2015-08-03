package grails.blog


class CommentController {

    def addComment() {
    	//TODO: Should Save Post instead of comment
    	//add comment to post before save
    	if(params.postId && params.author && params.comment){
	    	Postpage post = Postpage.get(params.postId)
	    	def comment = new Comment(post:post, 
	    							  author:params.author, 
	    							  comment:params.comment).save(failOnError: true)
	    	post.addToComments(comment)
	    	render(template:"commentTemplate", model:[comments:post.comments])
	    }
    }
}
