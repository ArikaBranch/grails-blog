class PostEditPage

  page_url "http://localhost:8080/grails-blog/postpage/edit"

  text_field(:input_post_title,:id => "postTitle")
  text_area(:input_post_content, :id => "postContent")
  button(:click_submit, :id => "submit_post")

end