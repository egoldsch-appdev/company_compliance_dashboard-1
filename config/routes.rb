Rails.application.routes.draw do
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
