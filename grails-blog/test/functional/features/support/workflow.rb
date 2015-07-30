require 'page-object'
require 'watir-webdriver'
include PageObject::PageFactory

#reading_blog_entries Feature
def go_to_blog_view_page
  visit_page BlogListPage
end

def go_to_post_list_page
  on_page BlogListPage do |page|
    page.click_blog_link
  end
end

def get_tenth_post_title
  @browser.table.tbody.tr(:index, 9).td.text
end

def eleventh_post_exists?
  @browser.table.tbody.tr(:index, 10).td.present?
end

def click_a_blog_post
  on_page PostListPage do |page|
    page.click_post_link
  end
end

def get_post_content
  on_page PostViewPage do |page|
    page.return_post_content
  end
end

def input_text_for_search
  on_page PostListPage do |page|
    page.input_search= "BootStrap Post1"
  end
end

def click_search_button
  on_page PostListPage do |page|
    page.click_search
  end
end

def get_posts
  on_page PostListPage do |page|
    return page.post_list
  end
end

#creating_blog_entries Feature

def go_to_login_page
  visit_page LoginPage
end

def login_as_blogger
  on_page LoginPage do |page|
    page.input_username= "blogger"
    page.input_blogger_password= "password"
    page.click_login_button
  end
end

def create_new_post
  on_page PostListPage do |list_page|
    list_page.click_create_new_post_button
  end
  on_page PostEditPage do |edit_page|
    edit_page.input_post_title="New Test Post"
    edit_page.input_post_teaser="New Test Teaser"
    edit_page.input_post_content="New Test Content"
  end
end

def submit_post
  on_page PostEditPage do |page|
    page.click_submit_new_post
  end
end

def post_is_valid?
  @browser.text.include?("success")
end

def new_post_title
  @browser.table(:id, "special_post_table").tbody.tr(:index, 0).td(:index, 0).flash
  @browser.table(:id, "special_post_table").tbody.tr(:index, 0).td(:index, 0).text
end

def post_page_url
  @browser.url
end

def get_first_comment
  on_page PostViewPage do |page|
    page.first_comment
  end
end

def add_my_comment
  on_page PostViewPage do |page|
    page.input_author_info="Author"
    page.input_comment="second comment"
    page.click_add_comment_button
  end
end

def click_ok
  on_page PostSuccessPage do |page|
    page.click_ok_button
  end
end