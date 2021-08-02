Given(/^I have prerigistered user$/) do
    @user_name = 'test1991'
    @user_pass = 'test1991'
end

Given(/^I click click 'login' button$/) do
    # Cucumber
    # find('.login').click

    # Page Object
    @home_page.menu.sign_in_link.click
    sleep 1
end

Given(/^I fill in login form$/) do
    # Cucumber
    # find('#username').set @user_name
    # find('#password').set @user_pass
    # find('#login-submit').click

    # Page Object
    @sign_in_page = SignInPage.new
    @sign_in_page.user_name.set @user_name
    @sign_in_page.password.set @user_password
    @sign_in_page.submit_btn.click
    sleep 1
end

Given(/^I see that I become logged in user$/) do
    # Cucumber
    # expect(page).to have_content "Logged in as #{@user_name}"

    # Page Object
    expect(@home_page.header.text).to.include @user_name
    sleep 1
end