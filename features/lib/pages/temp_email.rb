require "capybara/dsl"

class Temporary_Email
  attr_accessor :validation_link
  include Capybara::DSL

  HOMEPAGE_URL = "https://www.10minutemail.com/"
  DUMMY_URL = "http://store.demoqa.com/wp-login.php"
  VALIDATION_MESSAGE = "#ui-id-2"
  MESSAGE_BODY = "p.message"
  VALIDATION_LINK = ".vglnk"

  def get_url
    current_url
  end
  def visit_homepage
    visit(HOMEPAGE_URL)
  end
  def visit_url url
    visit(url)
  end
  def find_validation_link #waits max 3 minutes for email to appear
    find(VALIDATION_MESSAGE, wait: 180).find(MESSAGE_BODY).find(VALIDATION_LINK)["href"]
  end

end
