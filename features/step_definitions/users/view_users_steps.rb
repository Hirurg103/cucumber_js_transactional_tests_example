Given("I have a user") do
  create :user, first_name: 'John', last_name: 'Doe'
end

When("I visit the users list") do
  visit '/users'
end

Then("I should see the user") do
  expect(page).to have_css 'tr', text: 'John Doe', count: 1
end
