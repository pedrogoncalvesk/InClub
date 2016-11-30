Feature: Role

  Scenario: Viewing application's role page
    Given there's a role named "Role 1"
    When I am on the roles page
    Then I should see the "Role 1" role