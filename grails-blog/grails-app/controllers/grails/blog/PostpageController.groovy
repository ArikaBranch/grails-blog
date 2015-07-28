package grails.blog
import java.util.Date
import grails.converters.JSON


class PostpageController {

    //def scaffold = true
    def getAllComments() {
        def comments = Comment.list()
        def response = []
        comments.each {
            response << "${it}"
        }
        render response as JSON
    }

    def search() {

        Blogpage blog = Blogpage.get(params.blogId)
        def posts = Postpage.findAllByTitleLikeAndBlog("%"+params.search+"%", blog, [sort:"lastUpdated", order:"desc"])
        [postList:posts]
        render(view:'list', model:[postList:posts, blog:blog])
    }

    def list() {

        Blogpage blog = Blogpage.get(params.id)
        def posts = Postpage.findAllByBlog(blog, [max:10, sort:"lastUpdated", order:"desc"])
        [postList:posts]
        render(view:'list', model:[postList:posts, blog:blog])
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
        render(view:'view', model:[post:post])
    }

    def save() {
        //hack job here, may get refactored - necessary to get the post to save on edit
        def editPost = params
        def post = loadPost(params.id)
        post.blog = Blogpage.findById(editPost.blogId)
        post.title = editPost.postTitle
        post.content = editPost.post
        post.teaser = editPost.postTeaser
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

