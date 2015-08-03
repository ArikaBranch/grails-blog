require 'page-object'

class PostViewPage
  include PageObject

  page_url "http:/localhost:8080/grails-log/postpage/view"

  div(:return_post_content, :id => "post_content" )
  div(:first_comment_author, :id => "comment0_author")
  button(:click_add_comment_button, :id => "add_comment")
  text_field(:input_author_info, :name => "author")
  text_area(:input_comment, :name => "comment")



end