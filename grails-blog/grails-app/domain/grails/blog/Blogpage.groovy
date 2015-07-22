package grails.blog

import java.util.Date;
import java.util.SortedSet;

class Blogpage implements Comparable{

	static hasMany = [posts:Postpage]

	String title
	Date lastUpdated
	SortedSet posts

	public int compareTo(Object o) {
		return o.lastUpdated.compareTo(lastUpdated)
	}

	static constraints = {
		title(nullable:false, blank:false, length:1..30)
		lastUpdated(nullable:true)
	}


}
