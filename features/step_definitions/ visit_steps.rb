When(/^I open homepage$/) do
  visit 'https://testautomate.me/redmine'
end

Then(/^I see website name$/) do
  expect(page).to have_content 'Redmine@testautomate.me'

  sleep 5
end