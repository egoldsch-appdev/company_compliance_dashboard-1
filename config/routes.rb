Rails.application.routes.draw do
  # Routes for the Participation resource:
  # CREATE
  get "/participations/new", :controller => "participations", :action => "new"
  post "/create_participation", :controller => "participations", :action => "create"

  # READ
  get "/participations", :controller => "participations", :action => "index"
  get "/participations/:id", :controller => "participations", :action => "show"

  # UPDATE
  get "/participations/:id/edit", :controller => "participations", :action => "edit"
  post "/update_participation/:id", :controller => "participations", :action => "update"

  # DELETE
  get "/delete_participation/:id", :controller => "participations", :action => "destroy"
  #------------------------------

  # Routes for the Requirement resource:
  # CREATE
  get "/requirements/new", :controller => "requirements", :action => "new"
  post "/create_requirement", :controller => "requirements", :action => "create"

  # READ
  get "/requirements", :controller => "requirements", :action => "index"
  get "/requirements/:id", :controller => "requirements", :action => "show"

  # UPDATE
  get "/requirements/:id/edit", :controller => "requirements", :action => "edit"
  post "/update_requirement/:id", :controller => "requirements", :action => "update"

  # DELETE
  get "/delete_requirement/:id", :controller => "requirements", :action => "destroy"
  #------------------------------

  # Routes for the Elearning resource:
  # CREATE
  get "/elearnings/new", :controller => "elearnings", :action => "new"
  post "/create_elearning", :controller => "elearnings", :action => "create"

  # READ
  get "/elearnings", :controller => "elearnings", :action => "index"
  get "/elearnings/:id", :controller => "elearnings", :action => "show"

  # UPDATE
  get "/elearnings/:id/edit", :controller => "elearnings", :action => "edit"
  post "/update_elearning/:id", :controller => "elearnings", :action => "update"

  # DELETE
  get "/delete_elearning/:id", :controller => "elearnings", :action => "destroy"
  #------------------------------

  # Routes for the Department resource:
  # CREATE
  get "/departments/new", :controller => "departments", :action => "new"
  post "/create_department", :controller => "departments", :action => "create"

  # READ
  get "/departments", :controller => "departments", :action => "index"
  get "/departments/:id", :controller => "departments", :action => "show"

  # UPDATE
  get "/departments/:id/edit", :controller => "departments", :action => "edit"
  post "/update_department/:id", :controller => "departments", :action => "update"

  # DELETE
  get "/delete_department/:id", :controller => "departments", :action => "destroy"
  #------------------------------

  # Routes for the Employee resource:
  # CREATE
  get "/employees/new", :controller => "employees", :action => "new"
  post "/create_employee", :controller => "employees", :action => "create"

  # READ
  get "/employees", :controller => "employees", :action => "index"
  get "/employees/:id", :controller => "employees", :action => "show"

  # UPDATE
  get "/employees/:id/edit", :controller => "employees", :action => "edit"
  post "/update_employee/:id", :controller => "employees", :action => "update"

  # DELETE
  get "/delete_employee/:id", :controller => "employees", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
