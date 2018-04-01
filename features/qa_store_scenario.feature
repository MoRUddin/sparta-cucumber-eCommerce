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
    Then I can fill in my username, password and click login to login
