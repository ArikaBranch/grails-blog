package grails.blog

class BlogpageController {

    def create = {
    	def blog = Blogpage.get(params)
    	if(!blog) {
    		blog = new Blogpage()
    	}
    	render(view:'create')
    }

    def blogList = {
    	[blogs:Blogpage.list(params), blogCount:Blogpage.count()]
    }

    def list = {
    	render(view:'list', model:[blogs:Blogpage.list(sort:'lastUpdated', order:'desc'), blogCount:Blogpage.count()])
    }

    def view = {
    	render(view:'view', model:[blog:Blogpage.get(params.id)])
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
 			redirect(action:'create')
 		} else {
 			redirect(action:'create')
 		}
    }


}

