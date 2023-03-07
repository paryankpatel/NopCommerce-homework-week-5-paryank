Feature: Nopcommerce Registration

  AS a User I want to check the register functionality of Nopcommerce

Background: I am on Nopcommerce Registration page
Given I open the google chrome browser
When  I open the URL https://demo.nopcommerce.com/register
Then  I am Nopcommerce Registration page

Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
When I enter first name "<First Name>"
And  I enter last name "<Last Name>"
And  I enter email address "<Email>"
And  I enter password "<Password>"
And  I enter confirm password "<Confirm Password>"
And  Click on register button
Then I can see an error message "<error message>"
And  I am not able to register

  Examples:
  |First Name| Last Name|Email            |Password|Confirm Password|error message                              |
  |          |bakshi    |bakshi@gmail.com |456897  |456897          |please enter First Name                    |
  |Rohan     |          |bakshi@gmail.com |456897  |456897          |please enter Last Name                     |
  |Rohan     |bakshi    |                 |456897  |456897          |please enter valid email                   |
  |Rohan     |bakshi    |bakshi@gmail.com |        |456897          |password is required                       |
  |Rohan     |bakshi    |bakshi@gmail.com |456897  |                |confirm password is required               |
  |Rohan     |bakshi    |bakshi@gmail.com |456897  |45689           |password and confirm password do not match |
  |Rohan     |bakshi    |bakshi@gmail.com |45689   |                |minimum 6 character password is required   |
  |          |          |                 |        |                |Mandatory (*)field is required             |

Scenario: I should be able to select any one radio button from Gender label of your personal details section
  Given  I am on gender lable of your personal detail section
  When   I select "Male" radio button
  And    I select "Female" radio button
  Then   I am able to select any one of the radio button

Scenario Outline: I should be able to select Day,Month and Year from drop down list of date of birth field
  Given I am on date of Birth field of your personal detail section
  When  I select day "<Day>"
  And   I select month "<Month>"
  And   I select year "<Year>"
  Then  I am able to select Day,Month and Year from drop down list

  Examples:
  |Day | Month     | Year  |
  |13  | june      |1987   |

Scenario: I should be able to check and uncheck the newsletter box on option section
  Given  I am on Newsletter label on option section
  When   I click on Newsletter checkbox
  And    I again click on Newsletter checkbox
  Then   I was able to check and uncheck the box next to Newsletter label

Scenario: I should be able to register with valid mandatory (*) field data on registration page
  When I enter first name "Rohan"
  And  I enter last name "bakshi"
  And  I enter email "bakshi@gmail.com"
  And  I enter password "456897"
  And  I enter confirm password "456897"
  And  I click on register button
  Then I was able to register successfully