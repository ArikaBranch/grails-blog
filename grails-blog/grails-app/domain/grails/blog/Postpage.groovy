package grails.blog

//added test comment
class Postpage {

	String title

    static constraints = {
    	title(blank: false)
    }
}
