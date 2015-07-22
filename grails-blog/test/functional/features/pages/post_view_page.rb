class PostViewPage

  page_url "http:/localhost:8080/grails-log/postpage/view"

  div(:return_post_content, :id => "post_content" )
  table(:comment_table, :id => "special_comment_table")
  button(:click_add_comment_button, :id => "add_comment")
  text_field(:input_author_info, :id => "comment_author")
  text_area(:input_comment, :id => "comment_area")

  def first_comment
    coment_table_element.collect do |comment|
        comment_info = comment.text
    end
    return comment_info[0]
  end

end