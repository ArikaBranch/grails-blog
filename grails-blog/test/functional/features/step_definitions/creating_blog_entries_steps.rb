#Feature: Post a Blog Entry
#In order to show the rest of the world how smart I am
#As a Blogger
#I want to be able to post a blog entry

#Scenario: New Blog Post
Given (/^I am logged in as a blogger$/) do
  go_to_login_page
  login_as_blogger
end
When (/^I publish a new blog post$/) do
  go_to_post_list_page
  create_new_post
  submit_post
end
Then (/^I am notified that the blog post was successfully added$/) do
  expect(post_is_valid?).to be true
end
And (/^the newly added blog post is at the top of the recent posts list$/) do
  go_to_post_list_page
  expect(new_post_title).to eq("Post1")
end