class ProjectsPage < SitePrism::Page
  set_url 'https://testautomate.me/redmine/projects'
  element :new_project, '#content > div.contextual > a'
end