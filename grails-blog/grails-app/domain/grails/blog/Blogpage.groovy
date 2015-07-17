package grails.blog

class Blogpage {

	String title

	
	static belongsTo = [homepage: Homepage]

    static constraints = {
    }
}
