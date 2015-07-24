import grails.blog.Blogpage
import grails.blog.Postpage


class BootStrap {

    def init = { servletContext ->
		def blog1 = new Blogpage(title:"BootStrap Blog1").save(failOnError: true);
		def blog2 = new Blogpage(title:"BootStrap Blog2").save(failOnError: true);
		def blog3 = new Blogpage(title:"BootStrap Blog3").save(failOnError: true);
		def blog4 = new Blogpage(title:"BootStrap Blog4").save(failOnError: true);
		def blog5 = new Blogpage(title:"BootStrap Blog5").save(failOnError: true);
		def blog6 = new Blogpage(title:"BootStrap Blog6").save(failOnError: true);
		def blog7 = new Blogpage(title:"BootStrap Blog7").save(failOnError: true);
		def blog8 = new Blogpage(title:"BootStrap Blog8").save(failOnError: true);
		def blog9 = new Blogpage(title:"BootStrap Blog9").save(failOnError: true);
		def blog10 = new Blogpage(title:"BootStrap Blog10").save(failOnError: true);

		
		
		new Postpage(blog: blog4,
					title:"BootStrap Post1",
					teaser:"BootStrap teaser1",
					content:"BootStrap content1").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post2",
					teaser:"BootStrap teaser2",
					content:"BootStrap content2").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post3",
					teaser:"BootStrap teaser3",
					content:"BootStrap content3").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post4",
					teaser:"BootStrap teaser4",
					content:"BootStrap content4").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post5",
					teaser:"BootStrap teaser5",
					content:"BootStrap content5").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post6",
					teaser:"BootStrap teaser6",
					content:"BootStrap content6").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post7",
					teaser:"BootStrap teaser7",
					content:"BootStrap content7").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post8",
					teaser:"BootStrap teaser8",
					content:"BootStrap content8").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post9",
					teaser:"BootStrap teaser9",
					content:"BootStrap content9").save(failOnError: true);

		new Postpage(blog: blog4,
					title:"BootStrap Post10",
					teaser:"BootStrap teaser10",
					content:"BootStrap content10").save(failOnError: true);
		
    }
    def destroy = {
    }
}
