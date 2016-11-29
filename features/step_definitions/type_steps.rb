Given(/^there's a type named "(.*?)" and described as "(.*?)"$/) do |name,description|
  @type = Type.create(name: name, description: description)
end

When(/^I am on the types page/) do
  visit types_path
end

Then(/^I should see the "(.*?)" type and its description "(.*?)"$/) do |name, description|
  @type = Type.find_by_name_and_description(name, description)

  assert page.has_content?(@type.name) && page.has_content?(@type.description)
end