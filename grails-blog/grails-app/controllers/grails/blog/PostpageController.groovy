package grails.blog
import java.util.Date
import grails.converters.JSON


class PostpageController {

    //def scaffold = true
    def search() {

        Blogpage blog = Blogpage.get(params.blogId)
        def posts = Postpage.findAllByTitleLikeAndBlog("%"+params.search+"%", blog, [sort:"lastUpdated", order:"desc"])
        int postCount = Postpage.countByTitleLikeAndBlog("%"+params.search+"%", blog)
        [postList:posts]
        render(view:'list', model:[postList:posts, blog:blog, postCount:postCount])
    }

    def list() {

        Blogpage blog = Blogpage.get(params.id)
        def posts = Postpage.findAllByBlog(blog, [max:10, sort:"lastUpdated", order:"desc"])
        int postCount = Postpage.countByBlog(blog)
        [postList:posts]
        render(view:'list', model:[postList:posts, blog:blog, postCount:postCount])
    }

    def success() {
        def post = Postpage.get(params.id)
        redirect(action:'list', id:post.blog.id);
    }

    def edit() {
    	def post = Postpage.get(params.id)
    	if (!post){
            post = new Postpage(blog:Blogpage.get(params.blogId))
        }
    	render(view:'edit', model:[post:post])
    }

    def view() {
        def post = Postpage.get(params.id)
        def comments = Comment.findAllByPost(post, [sort:"dateCreated", order:"desc"])
        render(view:'view', model:[post:post, comments:comments])
    }

    def save() {
        def post = loadPost(params.id)
        post.blog = Blogpage.findById(params.blogId)
        post.title = params.postTitle
        post.content = params.post
        post.teaser = params.postTeaser
        post.lastUpdated = new Date()

        if(post.save(failOnError:true, flush:true)) {
            render(view:'success', model:[post:post])
        } else {
            post.errors.allErrors()
        }
    }

    private loadPost(id) {
        def post = new Postpage();
        if(id) {
            post = Postpage.get(id)
        }
        return post
    }
}

