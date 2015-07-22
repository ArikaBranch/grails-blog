package grails.blog

import java.util.Date;
import java.util.SortedSet;

class Postpage implements Comparable {

	static belongsTo = Blogpage
	static hasMany = [comments:Comment]

	Blogpage blog
	String title
	String teaser = createTeaser();
	String content
	Date lastUpdated
	Boolean published = false
	SortedSet comments

	public String createTeaser() {
		String teaser = ""
		if (content.length > 100){
			teaser = content.substring(0, 100)
		} else {
			teaser = content.substring(0, content.length)
		}
		return teaser
	}

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
