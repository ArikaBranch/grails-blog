package grails.blog

class HomepageController {

	def scaffold = true
	
    def login = {
    	render(view:'login')
    }
}
