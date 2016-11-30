Given(/^there's a role named "(.*?)"$/) do |name|
  @role = Role.create(name: name)
end

When(/^I am on the roles page/) do
  visit roles_path
end

Then(/^I should see the "(.*?)" role$/) do |name|
  @role = Role.find_by_name(name)

  assert page.has_content?(@role.name)
end