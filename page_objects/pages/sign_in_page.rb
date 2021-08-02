class SignInPage < SitePrism::Page
  section :menu, MenuSection, '#top-menu'

  element :username, '#username'
  element :password, '#password'
  element :submit_btn, '#login-submit'
end