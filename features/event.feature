Feature: Event Search

  Scenario: Viewing application's event page
    Given there's an event called "Event 1" which is organised by 1 and happens at 1. It is described as "Desc 1", dated "13-12-16" and has a true status
    When I am on the events page and search for an event "Event 1", by "Org 1" at "Local 1"
    Then I should see the "Event 1" event at 1 by 1