require 'page-object'

class PostSuccessPage
  include PageObject

  button(:click_ok_button, :id => "ok")

end