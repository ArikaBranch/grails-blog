package grails.blog

class Homepage {

	String title

	static hasMany = [homepage: Homepage]
	
    static constraints = {
    	title(blank: false)
    }
}
