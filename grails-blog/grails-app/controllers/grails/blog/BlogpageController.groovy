package grails.blog

class BlogpageController {

	 def scaffold = true

    def create = {
    	def blog = Blogpage.get(params.id)
    	if(!blog) {
    		blog = new Blogpage()
    	}
    	render(view:'create', model:[blog:blog])
    }

    def blogList = {
    	[blogs:Blogpage.list(params), blogCount:Blogpage.count()]
    }

    def list = {
    	render(view:'list', model:[blogs:Blogpage.list(sort:'lastUpdated', order:'desc'), blogCount:Blogpage.count()])

        //not correct code, just flushing out logic
        def blog = loadBlog(params.id)
        if(blog.create(true)){
            redirect(action:'edit')
        }
    }

    def view = {
    	render(view:'view')
    }

    private loadBlog(id) {
    	def blog = new Blogpage();
    	if(id) {
    		blog = Blogpage.get(id)
    	}
    	return blog
    }

    def save = {
    	def editBlog = params
 		def blog = loadBlog(params.id)
 		blog.title = editBlog.title

 		if(blog.save(true)) {
 			redirect(action:'view')
 		} else {
 			redirect(action:'create')
 		}
    } 

   
}

