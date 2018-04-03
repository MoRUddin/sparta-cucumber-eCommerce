require "capybara"

class QALogin
  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  EMAIL_FIELD = "user_login"
  PASSWORD_FIELD = "user_pass"
  LOGIN_BUTTON = "wp-submit"
  LOGOUT_BUTTON = "Log Out"
  LOGOUT_NAV_HOVER = "img.avatar.avatar-26.photo"
  CLICK_LOG_IN = "Log in"

  def get_url
    current_url
  end
  def visit_homepage
    visit(HOMEPAGE_URL)
  end
  def visit_url url
    visit(url)
  end
  def click_log_in
    click_link(CLICK_LOG_IN)
  end
  def fill_email email
    fill_in(EMAIL_FIELD, with: email)
  end
  def fill_password password
    fill_in(PASSWORD_FIELD, with: password)
  end
  def click_login_continue
    click_button(LOGIN_BUTTON)
  end
  def hover_over_logout
    find(LOGOUT_NAV_HOVER).hover
  end
  def click_logout
    click_link(LOGOUT_BUTTON)
  end

end
