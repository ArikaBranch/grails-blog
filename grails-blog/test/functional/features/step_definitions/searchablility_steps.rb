#Feature: Search Engine Friendly URLs
#In order to gain new followers
#As a Blogger
#I want my blog entries to be easily found by search engines

#Scenario: Search Engine Friendly URLs (http://juddsolutions.blogspot.com/2011/02/free-mobile-development-lunch-and.html)
#Given (/^I visit the blog for my favorite blogger$/) do

#When (/^I choose a blog post$/) do

Then (/^the url should contain information about the post$/) do
  expect(post_page_url).to eq("http://localhost:8080/grails-blog/postpage/view/5/BootStrap%20Post4")
end