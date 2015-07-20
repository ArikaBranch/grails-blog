package grails.blog

import java.util.Date;
import java.util.SortedSet;

class Postpage implements Comparable {

	static belongsTo = Blogpage
	static hasMany = [comments:Comment]

	Blogpage blog
	String title
	String teaser
	String content
	Date lastUpdated
	Boolean published = false
	SortedSet comments


	public int compareTo(Object o) {
		return o.lastUpdated.compareTo(lastUpdated)
	}

    static constraints = {
		title(nullable:false, blank:false, length:1..30)
		teaser(length:0..100)
		content(nullable:false, blank:false)
		lastUpdated(nullable:true)
		published(nullable:false)
	}
}
