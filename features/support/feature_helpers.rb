module FeatureHelper
  def sign_up_user(user)
    @sign_up_page = SignUpPage.new

    @sign_up_page.login.set user[:name]
    @sign_up_page.password.set user[:pass]
    @sign_up_page.password_confirm.set 'test1234'
    @sign_up_page.firstname.set 'Test'
    @sign_up_page.lastname.set 'User'
    @sign_up_page.email.set "#{user[:name]}@test.org"

    @sign_up_page.submit_btn.click
  end
end

World(FeatureHelper)