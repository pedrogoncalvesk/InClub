Feature: Type

  Scenario: Viewing application's type page
    Given there's a type named "Type 1" and described as "desc 1"
    When I am on the types page
    Then I should see the "Type 1" type and its description "desc 1"