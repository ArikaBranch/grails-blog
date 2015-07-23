package grails.blog

class PostpageController {

    //def scaffold = true
   

    def list = {

        Blogpage blog = Blogpage.findByTitle(params.title)

        def post = Postpage.findAllByBlog(blog, [max:10]);
        [postList:post]

        render(view:'list', model:[postList:post])
    }

    def success = {
    	render(view:'success')
    }

    def edit = {
    	def post = Postpage.get(params.id)
    	if(!post) {
    		post = new Postpage()
    	}
    	render(view:'edit', model:[post:post])
    }

    def view = {
        def post = Postpage.get(params.id)
       render(view:'view', model:[post:post])
    }

    def save = {
        //hack job here, may get refactored - necessary to get the post to save on edit
        def editPost = params
        def post = loadPost(params.id)
        post.title = editPost.title
        post.content = editPost.content

        if(post.save()) {
            redirect(action:'success')
        } else {
            render('error')
        }
    }

    private loadPost(id) {
        def post = new Postpage();
        if(id) {
            post = Postpage.get(id)
        }
        return post
    }
}

