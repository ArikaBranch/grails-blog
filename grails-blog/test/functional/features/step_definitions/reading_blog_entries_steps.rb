#Scenario: View Recent Blog Posts
Given (/^my favorite blogger has been very active$/) do

end

When (/^I visit the blog for my favorite blogger$/) do
  go_to_blog_view_page
  go_to_post_list_page
end

Then (/^I should see a summary of my favorite blogger's 10 most recent posts in reverse order$/)do
  expect(get_tenth_post_title).not_to eq("BootStrap Post9")
  expect(get_tenth_post_title).to eq("BootStrap Post4")
  expect(eleventh_post_exists?).to be false
end

#Scenario: View a Blog Post
#Given I visit the blog for my favorite blogger

When (/^I choose a blog post$/) do
  click_a_blog_post
end

Then (/^I should see the blog post$/) do
  expect(get_post_content.text.include?("BootStrap content4")).to be true
end

#Scenario: Search for Blog Post
#Given I visit the blog for my favorite blogger

When (/^I search for a blog post$/) do
  input_text_for_search
  click_search_button
end

Then (/I should see posts with that value in the title$/) do
  get_posts.each do |post|
    #page object adding additional table rows that were empty ensuring content exisits
    if(post != "")
      expect(post.include?("BootStrap Post1")).to be true
    end
  end
end