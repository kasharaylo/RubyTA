When(/^I visit Redmine homepage$/) do
  # Cucumber
  # visit 'https://testautomate.me/redmine'
  # Page Object
  @home_page = HomePage.new
  @home_page.load
end

Then(/^I see website name$/) do
  # Cucumber
  # expect(page).to have_content 'Redmine@testautomate.me'

  # Page Object
  expect(@home_page.header.text).to include 'Redmine@testautomate.me'
  sleep 2
end