package grails.blog

class PostpageController {

    def scaffold = true

    def list = {
    	render(view:'list')
    }

    def success = {
    	render(view:'success')
    }
}

