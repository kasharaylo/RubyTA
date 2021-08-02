@feature1
Feature: Visitor Registration and Login
    As a visitor
    I want to be able to sign up and sign in
    In order to become user

Background:
    Given I visit Redmine homepage

@scenario1
Scenario: Visitor successfully sign up
    When I click click 'register' button
    And I fill in registration form
    Then I see that I become logged in user

@scenario2
Scenario: Visitor successfully sign in
#    Given I have preregistered user

    When I click click 'login' button
    And I fill in login form
    Then I see that I become logged in user