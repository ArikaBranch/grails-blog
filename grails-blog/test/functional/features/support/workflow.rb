require 'page-object'
require 'watir-webdriver'
include PageObject::PageFactory

#reading_blog_entries Feature
def go_to_blog_view_page
  visit_page BlogListPage
end

def go_to_post_list_page
  visit_page PostListPage
end

def get_tenth_post_title
  @browser.table.tr(:index, 10).td.text
end

def eleventh_post_exists?
  @browser.table.tr(:index, 11).present?
end

def click_a_blog_post
  on_page PostListPage do |page|
    page.click_post_link
  end
end

def get_post_content
  on_page PostViewpage do |page|
    page.return_post_content
  end
end

def input_text_for_search
  on_page PostListPage do |page|
    page.search_for_post("post")
  end
end

def click_search_button
  on_page PostListPage do |page|
    page.click_search
  end
end

def get_post_titles
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
    page.input_username("blogger")
    page.input_blogger_password("password")
    page.click_login_button
  end
end

def create_new_post
  on_page PostListPage do |list_page|
    list_page.click_create_new_post_button
  end
  on_page PostEditPage do |edit_page|
    edit_page.input_post_title
    edit_page.input_post_content
  end
end

def submit_post
  on_page PostEditPage do |page|
    page.click_submit
  end
end

def post_is_valid?
  @browser.text.include?("sucess")
end

def new_post_title
  @browser.table.tr(:index, 1).td.text
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
    page.click_add_comment_button
    page.input_author_info("Author2")
    page.input_comment("second comment")
  end
end
