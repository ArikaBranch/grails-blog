require 'page-object'

class PostEditPage
  include PageObject

  page_url "http://localhost:8080/grails-blog/postpage/edit"

  text_field(:input_post_title,:id => "postTitle")
  text_field(:input_post_teaser,:id => "postTeaser")
  text_area(:input_post_content, :id => "post")
  button(:click_submit_new_post, :id => "submit_new_post")

end