class HomePage < SitePrism::Page
    set_url 'https://testautomate.me/redmine/'
    section :menu, [ MenuSection, '#top-menu' ]
    element :header, '#header > h1'
end