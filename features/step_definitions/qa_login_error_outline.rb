Before do
  @login = qa_login
end

Given(/^I move to the sign in page$/) do
  @login.click_log_in
end

Given(/^I input the necessary details with the username details (.*) and the password details (.*)$/) do |email,password|
  sleep 2
  @login.fill_email(email)
  @login.fill_password(password)
  @login.click_login_continue
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(@login.displayed_error_message).to eq(error)
end
