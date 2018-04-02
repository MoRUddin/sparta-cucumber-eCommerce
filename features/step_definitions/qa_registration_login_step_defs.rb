Before do
  @registration = qa_registration
  @email = temp_email
  @login = qa_login
end

Given("I can create a temporary email account") do
  @email.visit_homepage
  @registration.get_address
end

And("I can access the main home page") do
  @registration.visit_homepage
  @registration.click_account
end

And("I can acces the registration page") do
  @registration.click_register
end

When("I enter enter my temporary email and username") do
  @registration.fill_username(@registration.address)
  @registration.fill_email(@registration.address)
  @registration.send_activation
end

And("I get an activation link in my temporary email") do
  @email.visit_homepage
  @email.validation_link = temp_email.find_validation_link
end

Then("I can go to the activation link to register my account") do
  @email.visit_url(@email.validation_link)
end

And("I will be given a changeable secure password") do
  sleep 2
  @registration.find_password
end

And("I can complete my registration by clicking reset password") do
  @registration.click_reset_password
  @registration.click_login_link
end

And("I can fill in my username, password and click login to login") do
  sleep 2
  @login.fill_email(@registration.address)
  @login.fill_password(@registration.qa_password)
  @login.click_login_continue
end

And("I can access the user dashboard") do
  expect(@login.get_url).to eq("http://store.demoqa.com/wp-admin/profile.php")
end

And("I can click logout to log out") do
  @login.hover_over_logout
  @login.click_logout
  sleep 2
end
