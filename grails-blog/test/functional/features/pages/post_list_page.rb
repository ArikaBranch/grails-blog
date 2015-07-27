require 'page-object'

class PostListPage
  include PageObject

  page_url "http://localhost:8080/grails-blog/postpage/list"

  table(:post_list_table, :id => 'special_post_table')
  link(:click_post_link, :text => "BootStrap Post1")
  button(:click_search, :text => "Search")
  button(:click_create_new_post_button, :text => "Create New Post")
  text_field(:input_search, :id => "search")

  def post_list
    post_list_table_element.collect do |post|
       post_info = post.text
    end
  end
end