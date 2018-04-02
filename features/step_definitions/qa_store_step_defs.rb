Given("I can create a temporary email account") do
  temp_email.visit_homepage
  @qa_registration = qa_registration
  @qa_registration.get_address
end

Given("I can access the main home page") do
  qa_registration.visit_homepage
end

Given("I can acces the registration page") do
  qa_registration.click_account
  qa_registration.click_register
end

When("I enter enter my temporary email and username") do
  qa_registration.fill_username(@qa_registration.address)
  qa_registration.fill_email(@qa_registration.address)
  qa_registration.send_activation
end

When("I get an activation link in my temporary email") do
  temp_email.visit_homepage
  @validation_link = temp_email.find_validation_link
end

Then("I can go to the activation link to register my account") do
  temp_email.visit_url(@validation_link)
end

Then("I will be given a changeable secure password") do
  sleep 2
  @qa_registration.find_password
end

Then("I can complete my registration by clicking reset password") do
  qa_registration.click_reset_password
  qa_registration.click_login_link
end

Then("I can fill in my username, password and click login to login") do
  qa_login.fill_email(@qa_registration.address)
  qa_login.fill_password(@qa_registration.qa_password)
  qa_login.click_login
end
