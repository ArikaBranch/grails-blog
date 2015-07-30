package grails.blog

class BlogpageController {

	 //def scaffold = true

    def edit() {
    	def blog = Blogpage.get(params.id)
    	if(!blog) {
    		blog = new Blogpage()
    	}
    	render(view:'edit', model:[blog:blog])
    }

    def list() {
        def blog = Blogpage.list()
        [blogList:blog]

    	render(view:'list', model:[blogList:Blogpage.list(sort:'lastUpdated', order:'desc'), blogCount:Blogpage.count()])  
    }

    def save() {
 		def blog = loadBlog(params.id)
 		blog.title = params.blogTitle

 		if(blog.save(failOnError:true, flush:true)) {
            redirect(action:'list')
        } else {
            blog.errors.allErrors()
        }
    } 
    
    private loadBlog(id) {
        def blog = new Blogpage();
        if(id) {
            blog = Blogpage.get(id)
        }
        return blog
    }
   
}

