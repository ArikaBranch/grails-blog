#Scenario: View Recent Blog Posts
Given (/^my favorite blogger has been very active$/) do
  go_to_blog_view_page
end

When (/^I visit the blog for my favorite blogger$/) do
  go_to_post_list_page
end

Then (/^I should see a summary of my favorite bloggers 10 most recent posts in reverse order$/)do
  expect(get_tenth_post_title).to eq("Post 10")
  expect(eleventh_post_exists?).to be false
end

#Scenario: View a Blog Post
#Given I visit the blog for my favorite blogger

When (/^I choose a blog post$/) do
  click_a_blog_post
end

Then (/^I should see the blog post$/) do
  expect(get_post_content).to eq("test post content")
end

#Scenario: Search for Blog Post
#Given I visit the blog for my favorite blogger

When (/^I search for a blog post$/) do
  input_text_for_search
  click_search_button
end

Then (/I should see posts with that value in the title$/) do
  expect(get_post_titles).to each include?("post")
end