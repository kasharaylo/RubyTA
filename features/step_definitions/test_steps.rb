When(/^I am not logged in visitor$/) do
  @home_page = HomePage.new
  @home_page.load
  expect(@home_page.menu.text).to include 'Sign in'
end

When(/^I register 'admin' user via Redmine 'UI'$/) do
  @home_page.menu.sign_up_link.click
  @user = { name: "admin#{SecureRandom.hex(10)}", pass: 'test1234' }
  File.open('user.json', 'w') { |file| file.write(@user.to_json) }
  sign_up_user(@user)
  sleep 2
end

When(/^I see the 'admin' user is registered$/) do
  @account_page = AccountPage.new
  @account_page.load
  expect(@account_page.loggedas.text).to include @user[:name]
end

When(/^I create a project$/) do
  @projects_page = ProjectsPage.new
  @projects_page.load
  @projects_page.new_project.click
  @newproject_page = NewProjectPage.new
  @newproject_page.name.set 'Project_Name'
  @newproject_page.id.set 'test_id'

  @newproject_page.create_btn.click
  sleep 2
end

# Then(/^I see that project is created on 'UI' level$/) do
#   pending
# end
#
# And(/^I see that project is created on 'API' level$/) do
#   pending
# end
#
# When(/^I register 'developer' user via Redmine 'API'$/) do
#   pending
# end
#
# Then(/^I see the 'developer' user is registered$/) do
#   pending
# end
#
# When(/^I add 'developer' user as a member of the project$/) do
#   pending
# end
#
# Then(/^I can can see 'developer' user in the project member list$/) do
#   pending
# end
#
# When(/^I create an issue and assign 'developer' user to created issue$/) do
#   pending
# end
#
# Then(/^I see the issue is created$/) do
#   pending
# end
#
# And(/^I see 'developer' user is assigned to the issue$/) do
#   pending
# end
#
# When(/^I logout$/) do
#   pending
# end
#
# When(/^I login as 'developer' user$/) do
#   pending
# end
#
# Then(/^I become logged in as 'developer' user$/) do
#   pending
# end
#
# When(/^I track time for the assigned issue$/) do
#   pending
# end
#
# Then(/^I see the time is tracked properly$/) do
#   pending
# end
#
# When(/^I close the issue$/) do
#   pending
# end
#
# Then(/^I see the issue was closed$/) do
#   pending
# end
#
# When(/^I login as 'admin' user$/) do
#   pending
# end
#
# When(/^I close the project$/) do
#   pending
# end
#
# Then(/^I see it was successfully closed$/) do
#   pending
# end