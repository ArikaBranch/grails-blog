package grails.blog

import java.util.Date;
import java.util.SortedSet;

class Homepage {

	static hasMany = [blogs:Blogpage]

	String title
	Date lastUpdated
	SortedSet blogs

    static constraints = {
    }
}
