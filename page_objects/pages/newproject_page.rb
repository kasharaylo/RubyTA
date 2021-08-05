class NewProjectPage < SitePrism::Page

  element :name, '#project_name' #class
  element :id, '#project_identifier' #class
  element :create_btn, '#new_project > input[type=submit]:nth-child(5)' #css
end
