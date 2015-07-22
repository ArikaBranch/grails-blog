class PostListPage

  page_url "http://localhost:8080/grails-blog/postpage/list"

  table(:post_list_table, :id => 'special_post_table')
  link(:click_post_link, :text => "Post 1")
  button(:click_search, :text => "Search")
  button(:click_create_new_post_button, :text => "Create New Post")

  def post_list
    post_list_table_element.collect do |post|
       post_info = post.text
    end
  end
end