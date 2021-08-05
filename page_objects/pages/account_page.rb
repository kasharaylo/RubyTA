class AccountPage < SitePrism::Page
  set_url 'https://testautomate.me/redmine/my/account'
  section :menu, MenuSection, '#top-menu'
  element :loggedas, '#loggedas'
end