require "capybara"

class QALogin
  include Capybara::DSL

  EMAIL_FIELD = "user_login"
  PASSWORD_FIELD = "user_pass"
  LOGIN_BUTTON = "wp-submit"

  def fill_email email
    fill_in(EMAIL_FIELD, with: email)
  end
  def fill_password password
    fill_in(PASSWORD_FIELD, with: password)
  end
  def click_login
    click_button(LOGIN_BUTTON)
  end

end
