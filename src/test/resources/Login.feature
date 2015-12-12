Feature: OrangeHRM Admin Login Functionalities
  As a Admin
  I want to login my account
  So that I can access my account

  @new
  Scenario: Admin can able to login with valid credentials
    Given I am on the login page
    When I enter "Admin" and "Xwq3qYaY"
    And I select login
    Then I should be login successfully

  @new
  Scenario Outline: Admin cannot login with invalid credentials

    Given I am on the login page
    When I enter "<UserName>" and "<Password>"
    And I select login
    Then I should not login
    And I should see message as "<Message>"
    Examples:
      | UserName | Password | Message                  |
      | Admin    | acbc     | Retry Login              |
      | Admon    | Xwq3qYaY | Retry Login              |
      | 123      | sdfdfdf  | Retry Login              |
      |          |          | Username cannot be empty |
      |          | Xwq3qYaY | Username cannot be empty |
      | Admin    |          | Password cannot be empty |