Feature: eCommerce Registration, Login, and Purchasing routes
  Scenario: Registration process
    Given I can create a temporary email account
      And I can access the main home page
      And I can acces the registration page
    When I enter enter my temporary email and username
      And I get an activation link in my temporary email
    Then I can go to the activation link to register my account
      And I will be given a changeable secure password
      And I can complete my registration by clicking reset password
      And I can fill in my username, password and click login to login
      And I can access the user dashboard
      And I can click logout to log out

  Scenario: Single Purchase
    Given I can access the main home page
      And I can login in with correct credentials
      And I access the product catalogue
      And I add the iPhone five to the cart
    When I go to checkout
      And I click continue
      And I enter in details for shipping price
      And I enter in my personal details
      And I make the billing address, same as shipping
      And I click buy
    Then I am taken to the order confirmation page

  Scenario: Multiple Purchase
    Given I can access the main home page
      And I can login in with correct credentials
      And I access the product catalogue
      And I add the Magic mouse to the cart
    When I go to checkout
      And I update the quantity of my order to nine
      And I click continue
      And I enter in details for shipping price
      And I enter in my personal details
      And I make the billing address, same as shipping
      And I click buy
    Then I am taken to the order confirmation page

  Scenario: Purchasing using links from the homepage
    Given I can access the main home page
      And I can login in with correct credentials
    When I access buy mouse link
      And I add the magic mouse to cart
      And I go to checkout
      And I click continue
      And I enter in details for shipping price
      And I enter in my personal details
      And I make the billing address, same as shipping
      And I click buy
    Then I am taken to the order confirmation page

  Scenario Outline: If I input incorrect details into the login form I will receive the correct error message
    Given I can access the main home page
    And I move to the sign in page
    And I input the necessary details with the username details <username> and the password details <password>
    Then I receive the corresponding error <error>

    Examples:
        |      username      | password |                    error                    |
        |                    |    v     |    ERROR: The username field is empty.    |
        | f2770769@nwytg.com | password | ERROR: The password you entered for the email address f2770769@nwytg.com is incorrect. Lost your password? |
        | f2770769@nwytg.com |          | ERROR: The password field is empty. |
        | j43jk3jvv3kj4j345v | password | ERROR: Invalid username. Lost your password? |
