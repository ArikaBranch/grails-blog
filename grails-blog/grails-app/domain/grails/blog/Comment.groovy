package grails.blog

class Comment {
	String comment

    static constraints = {
    	comment(blank: false)
    }
}
