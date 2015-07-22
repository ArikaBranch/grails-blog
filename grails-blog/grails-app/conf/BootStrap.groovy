import grails.blog.Blogpage
import grails.blog.Postpage


class BootStrap {

    def init = { servletContext ->
		new Blogpage(title:"BootStrap Blog").save();
		
		new Postpage(title:"BootStrap Post",
					teaser:"BootStrap teaser",
					content:"BootStrap content").save();
		
    }
    def destroy = {
    }
}
