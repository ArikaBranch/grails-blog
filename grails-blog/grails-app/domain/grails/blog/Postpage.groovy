package grails.blog

class Postpage {

	String title

    static constraints = {
    	title(blank: false)
    }
}
