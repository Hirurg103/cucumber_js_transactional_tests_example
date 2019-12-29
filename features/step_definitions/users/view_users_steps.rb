Given("I have a user") do
  create :user, first_name: 'John', last_name: 'Doe'
end

When("I visit the users list") do
  visit '/users'
end

Then("I should see the user") do
  expect(page).to have_css 'tr', text: 'John Doe', count: 1
end

#

Given("I have two users") do
  create :user, first_name: 'John', last_name: 'Armstrong'
  create :user, first_name: 'John', last_name: 'Smith'
end

Then("I should see the both users") do
  expect(page).to have_css 'tr', text: 'John', count: 2
  expect(page).not_to have_css 'tr', text: 'Doe'
end
