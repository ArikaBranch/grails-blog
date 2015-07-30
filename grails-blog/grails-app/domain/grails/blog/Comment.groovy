package grails.blog

class Comment implements Comparable{
	static belongsTo = Postpage
	
	Postpage post
	String author
	String comment
	Date dateCreated

    public int compareTo(Object o) {
		return o.dateCreated.compareTo(dateCreated)
	}
	
	static constraints = {
		comment(length:1..240)
    }
}
