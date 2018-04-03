# sparta-cucumber-eCommerce

## Task
* Create an extensive UI automation test framework for the [QA Tools e-Commerce Site](http://store.demoqa.com/) using Cucumber.
* Cover Register and Login
* Cover at least 3 paths from Home to Completed Payment

## Requirements
* Ruby 5.1.5
* The gem "cucumber"
* The gem "capybara"
* The gem "selenium-webdriver"
* The gem "rspec"
* The gem "pry"
* Google Chrome
* To not be IP banned from [10minutemail](https://www.10minutemail.com/)

## Installation and running tests
* `git clone` the link from [here](https://github.com/MoRUddin/sparta-cucumber-eCommerce)
* run the command `bundle` to install the required gems
* run the command `cucumber -f html -o features/output/cucumber_report.html` to run the tests and record the report.
* open cucumber_report.html in your browser to view the results. (An example report has been provided)

## Challenges
* Finding obscure CSS selectors for nested elements heavily buried within other elements - a little testing revealed cucumber can achieve this easily
* Handling multiple elements of the same type being returned (especially in the case of classes)
* Selecting protected elements (ie the password given by demoqa upon successful registration)
