package grails.blog

class PostpageController {

    //def scaffold = true

    def list = {
        new Postpage(title:"Post Title", teaser:"Post teaser", content:"Post content").save();
        def post = Postpage.list()
        [postList:post]
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
        render(view:'view')
    }

    def index = {
        def posts = Postpage.list()
        [post:posts]

    }
}

