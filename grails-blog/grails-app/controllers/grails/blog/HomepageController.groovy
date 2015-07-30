package grails.blog

class HomepageController {

	static defaultAction = 'login'
	
    def login = {
    	render(view:'login')
    }
}
