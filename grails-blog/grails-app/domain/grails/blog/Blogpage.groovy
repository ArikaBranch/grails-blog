package grails.blog

import java.util.Date;
import java.util.SortedSet;

class Blogpage {
	static hasMany = [posts: Postpage]

	String title
	Date lastUpdated
	SortedSet posts

	static constraints = {
		title(nullable:false, blank:false, length:1..30)
		lastUpdated(nullable:true)
	}


}
