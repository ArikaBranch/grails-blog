package grails.blog

class PostpageController {

    //def scaffold = true

    def list = {
    	render(view:'list')
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
}

