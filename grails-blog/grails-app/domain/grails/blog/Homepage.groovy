package grails.blog

class Homepage {

	String title

    static constraints = {
    	title(blank: false)
    }
}
