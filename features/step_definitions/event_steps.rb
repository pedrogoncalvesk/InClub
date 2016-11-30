Given(/^there's an event called "(.*?)" which is organised by (\d+) and happens at (\d+). It is described as "(.*?)", dated "(.*?)" and has a (.*?) status$/) do |name,organization_id,local_id,description,date,status|
  @event = Event.create(name: name, organization_id: organization_id, local_id: local_id, description: description, date: date, status: status)
end

When(/^I am on the events page and search for an event "(.*?)", by "(.*?)" at "(.*?)"$/) do |name,organization_id,local_id|
  visit events_path
  fill_in "name", with: name
  click_on "Search"
end

Then(/^I should see the "(.*?)" event at (\d+) by (\d+)$/) do |name, local, org|
  @event = Event.search(name, local, org)

  assert page.has_content?(@event.name)
end