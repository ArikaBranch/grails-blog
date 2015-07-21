package grails.blog

class PostpageController {

    def scaffold = true

    def list = {
    	render(view:'list')
    }
}

