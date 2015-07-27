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

    def blogList() {
    	[blogs:Blogpage.list(params), blogCount:Blogpage.count()]
    }

    def list() {
        def blog = Blogpage.list()
        [blogList:blog]

    	render(view:'list', model:[blogList:Blogpage.list(sort:'lastUpdated', order:'desc'), blogCount:Blogpage.count()])  
    }

    private loadBlog(id) {
    	def blog = new Blogpage();
    	if(id) {
    		blog = Blogpage.get(id)
    	}
    	return blog
    }

    def save() {
    	def editBlog = params
 		def blog = loadBlog(params.id)
 		blog.title = editBlog.title

 		if(blog.save(true)) {
 			redirect(action:'view')
 		} else {
 			redirect(action:'edit')
 		}
    } 

   
}

