import grails.blog.Blogpage
import grails.blog.Postpage


class BootStrap {

    def init = { servletContext ->
		new Blogpage(title:"BootStrap Blog").save(failOnError: true);
		new Blogpage(title:"BootStrap Blog1").save(failOnError: true);

		
		
		new Postpage(title:"BootStrap Post",
					teaser:"BootStrap teaser",
					content:"BootStrap content").save(failOnError: true);
		
    }
    def destroy = {
    }
}
