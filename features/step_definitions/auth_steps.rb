require 'securerandom'
require 'json'

Given(/^I have preregistered user$/) do
  #   @user_name = 'test1991'
  #   @user_pass = 'test1991'

  @user = { name: "test#{SecureRandom.hex(10)}", pass: 'test1234' }
  File.open('user.json', 'w') { |file| file.write(@user.to_json) }

  api_create_user(@user)
end

When(/^I click click 'login' button$/) do
  # Cucumber
  # find('.login').click

  # Page Object
  @home_page.menu.sign_in_link.click
  sleep 2
end

When(/^I fill in login form$/) do
  # Cucumber
  # find('#username').set @user_name
  # find('#password').set @user_pass
  # find('#login-submit').click

  @user = JSON.parse(File.read('user.json'), { :symbolize_names => true })

  @sign_in_page = SignInPage.new

  @sign_in_page.username.set @user[:name]
  @sign_in_page.password.set @user[:pass]
  @sign_in_page.submit_btn.click

  sleep 2
end

Then(/^I see that I become logged in user$/) do
  # Cucumber
  # expect(page).to have_content "Logged in as #{@user_name}"

  # Page Object
  expect(@home_page.menu.logged_as.text).to include @user[:name]
  sleep 2
end

When(/^I click click 'register' button$/) do
  @home_page.menu.sign_up_link.click
  sleep 1
end

When(/^I fill in registration form$/) do

  @user = { name: "test#{SecureRandom.hex(10)}", pass: 'test1234' }
  File.open('user.json', 'w') { |file| file.write(@user.to_json) }

  # @user_name = "test#{SecureRandom.hex(10)}"
  # @user_pass = 'test1234'

  # @sign_up_page = SignUpPage.new

  # @sign_up_page.login.set @user[:name]
  # @sign_up_page.password.set @user[:pass]
  # @sign_up_page.password_confirm.set 'test1234'
  # @sign_up_page.firstname.set 'Test'
  # @sign_up_page.lastname.set 'User'
  # @sign_up_page.email.set "#{@user[:name]}@test.org"
  #
  # @sign_up_page.submit_btn.click

  sign_up_user(@user)
end