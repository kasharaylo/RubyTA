class SignUpPage < SitePrism::Page
  section :menu, MenuSection, '#top-menu'

  element :login, '#user_login' #class
  element :password, '#user_password' #class
  element :password_confirm, '#user_password_confirmation' #class
  element :firstname, '#user_firstname' #class
  element :lastname, '#user_lastname' #class
  element :email, '#user_mail' #class
  element :submit_btn, '#new_user > input[type=submit]:nth-child(4)' #css
end
