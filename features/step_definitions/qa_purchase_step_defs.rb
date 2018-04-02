Before do
  @purchase = qa_purchase
  @login = qa_login
end

And ("I can login in with correct credentials") do
  @login.click_log_in
  @login.fill_email("f2770769@nwytg.com")
  @login.fill_password("wPqMi)5FP*O*r!z2")
  @login.click_login_continue
  binding.pry
  @login.visit_homepage
end

And("I access the product catalogue") do
  @purchase.click_product_gallery
end

And("I add the iPhone five to the cart") do
  @purchase.find_default_products("iPhone 5")
end

When("I go to checkout") do
  @purchase.click_checkout
end

And("I click continue") do
  @purchase.click_continue
end

And("I enter in details for shipping price") do
  @purchase.select_country_for_shipping("United Kingdom")
  expect(@purchase.find_county).to eq("London")
  expect(@purchase.find_billing_email).to eq("f2770769@nwytg.com")
  sleep 2
end

And("I enter in my personal details") do
  expect(@purchase.find_billing_first_name).to eq("Bob")
  expect(@purchase.find_billing_last_name).to eq("Ross")
  expect(@purchase.find_billing_address).to eq("11 Alphabet Square")
  expect(@purchase.find_billing_city).to eq("London")
  expect(@purchase.find_billing_state).to eq("London")
  expect(@purchase.find_billing_country).to eq("GB")
  expect(@purchase.find_billing_postcode).to eq("E3 3RT")
  expect(@purchase.find_billing_phone).to eq("07900000000")
end

And("I make the billing address, same as shipping") do
  expect(@purchase.find_billing_shipping_check).to eq("true")
end

And("I click buy") do
  @purchase.click_purchase
end

Then("I am taken to the order confirmation page") do
  expect(@purchase.get_url).to include("http://store.demoqa.com/products-page/transaction-results/?sessionid=")
end
