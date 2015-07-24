require 'page-object'

class LoginPage
  include PageObject


  page_url "http://localhost:8080/grails-blog/homepage/login"

  text_field(:input_username, :id => "username")
  text_field(:input_blogger_password, :id => "password")
  button(:click_login_button, :id => "login")

end