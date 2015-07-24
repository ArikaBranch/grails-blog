require 'page-object'

class BlogListPage
  include PageObject

  page_url "http://localhost:8080/grails-blog/blogpage/list"
  link(:click_blog_link, :text => 'BootStrap Blog4')

end