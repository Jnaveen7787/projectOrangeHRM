Feature: Emailing a Friend


##acceptance
#  Scenario: Customer can send email   to friend - Happy path
#
#    Given Customer is in email a friend page
#    When he attempts to send email with valid details
#    Then he should see success message
#
#
#  Scenario: Customer cannot send email to friend with invalid data
#
#    Given Customer is in email a friend page
#    When he attempts to send email with invalid details
#    Then he should see validation message
#
##    functional
#
#Normal scenario

  Scenario: Customer should see the product name on email page

    Given Customer is in email a friend page
    Then the product name should be shown on the page
    When he click on product name
    Then he should be navigated to product detail page

#Pamametermise

  Scenario Outline: Customer cannot send email with invalid data

    Given Customer is in email a friend page
    When he fills the data with friend email as "<Friend Email>", your email as "<Your Email>"and message as "<Message>"
    And he send the email
    Then he should see a error message "<Error Message>"

  @new
    Examples:
      | Friend Email | Your Email | Message      | Error Message |
      | abc          | abc        | test message | Wrong email   |
    Examples:
      | Friend Email | Your Email  | Message      | Error Message |
      | 1291281      |             | test message | Wrong email   |
      | 1212         | *@£*(&@(£&( | test message | Wrong email   |









