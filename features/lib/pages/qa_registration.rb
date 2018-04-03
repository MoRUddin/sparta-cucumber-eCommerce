require "capybara"

class QARegistration
  attr_accessor :address, :qa_password
  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  EMAIL_ADDRESS = "#mailAddress"
  CLICK_ACCOUNT = "My Account"
  CLICK_REGISTER = "Register"
  USERNAME_FIELD_ID = "user_login"
  EMAIL_FIELD_ID = "user_email"
  SEND_ACTIVATION = "wp-submit"
  PASSWORD_FIELD = "#pass1"
  PASSWORD_CONFIRM = "Reset Password"
  LOGIN_LINK = "Log in"

  def get_url
    current_url
  end
  def visit_homepage
    visit(HOMEPAGE_URL)
  end
  def visit_url url
    visit(url)
  end
  def get_address
    @address = find(EMAIL_ADDRESS)["value"]
  end
  def click_account
    click_link(CLICK_ACCOUNT)
  end
  def click_register
    click_link(CLICK_REGISTER)
  end
  def fill_username username
    fill_in(USERNAME_FIELD_ID, with: username)
  end
  def fill_email email
    fill_in(EMAIL_FIELD_ID, with: email)
  end
  def send_activation
    click_button(SEND_ACTIVATION)
  end
  def find_password
    @qa_password = find(PASSWORD_FIELD)["data-pw"]
  end
  def click_reset_password
    click_button(PASSWORD_CONFIRM)
  end
  def click_login_link
    click_link(LOGIN_LINK)
  end

end
