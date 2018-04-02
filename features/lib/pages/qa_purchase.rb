require "capybara"

class QAPurchase
  include Capybara::DSL

  ALL_PRODUCTS_SELECTOR = "All Product"
  DEFAULT_PRODUCTS_SELECTOR = "div.default_product_display"
  PRODUCT_NAME_SELECTOR = ".wpsc_product_title"
  ADD_TO_CART_SELECTOR = ".wpsc_buy_button"
  CHECKOUT_SELECTOR = "#header_cart"
  CONTINUE_BUTTON = "Continue"
  CURRENT_COUNTRY = "current_country"
  SHIPPING_REGION = "input.shipping_region"
  BILLING_FORM_EMAIL = "#wpsc_checkout_form_9"
  BILLING_FORM_FIRST_NAME = "#wpsc_checkout_form_2"
  BILLING_FORM_LAST_NAME = "#wpsc_checkout_form_3"
  BILLING_FORM_ADDRESS = "#wpsc_checkout_form_4"
  BILLING_FORM_CITY = "#wpsc_checkout_form_5"
  BILLING_FORM_STATE = "#wpsc_checkout_form_6"
  BILLING_FORM_COUNTRY = "#wpsc_checkout_form_7"
  BILLING_FORM_POSTCODE = "#wpsc_checkout_form_8"
  BILLING_FORM_PHONE = "#wpsc_checkout_form_18"
  SHIPPING_SAME_AS_BILLING_CHECK = "#shippingSameBilling"
  MAKE_PURCHASE_BUTTON = "Purchase"

  def get_url
    current_url
  end
  def click_product_gallery
    click_link(ALL_PRODUCTS_SELECTOR)
  end
  def find_default_products product_name
    all(DEFAULT_PRODUCTS_SELECTOR).each do |product|
      if find_product_name(product) == product_name
        click_add_to_cart_button(product)
        sleep 2
      end
    end
  end
  def find_product_name product
    product.find(PRODUCT_NAME_SELECTOR).text
  end
  def click_add_to_cart_button product
    product.find(ADD_TO_CART_SELECTOR).click
  end
  def click_checkout
    find(CHECKOUT_SELECTOR).click
  end
  def click_continue
    click_link(CONTINUE_BUTTON)
  end
  def select_country_for_shipping(country)
    select(country,from: CURRENT_COUNTRY)
  end
  def find_county
    find(SHIPPING_REGION)["value"]
  end
  def find_billing_email
    find(BILLING_FORM_EMAIL)["value"]
  end
  def find_billing_first_name
    find(BILLING_FORM_FIRST_NAME)["value"]
  end
  def find_billing_last_name
    find(BILLING_FORM_LAST_NAME)["value"]
  end
  def find_billing_address
    find(BILLING_FORM_ADDRESS)["value"]
  end
  def find_billing_city
    find(BILLING_FORM_CITY)["value"]
  end
  def find_billing_state
    find(BILLING_FORM_STATE)["value"]
  end
  def find_billing_country
    find(BILLING_FORM_COUNTRY)["value"]
  end
  def find_billing_postcode
    find(BILLING_FORM_POSTCODE)["value"]
  end
  def find_billing_phone
    find(BILLING_FORM_PHONE)["value"]
  end
  def find_billing_shipping_check
    find(SHIPPING_SAME_AS_BILLING_CHECK)["value"]
  end
  def click_purchase
    click_button(MAKE_PURCHASE_BUTTON)
  end

end
