class RequirementsController < ApplicationController
  def index
    @requirements = Requirement.all

    render("requirements/index.html.erb")
  end

  def show
    @requirement = Requirement.find(params[:id])

    render("requirements/show.html.erb")
  end

  def new
    @requirement = Requirement.new

    render("requirements/new.html.erb")
  end

  def create
    @requirement = Requirement.new

    @requirement.employee_id = params[:employee_id]
    @requirement.department_id = params[:department_id]
    @requirement.elearning_id = params[:elearning_id]

    save_status = @requirement.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/requirements/new", "/create_requirement"
        redirect_to("/requirements")
      else
        redirect_back(:fallback_location => "/", :notice => "Requirement created successfully.")
      end
    else
      render("requirements/new.html.erb")
    end
  end

  def edit
    @requirement = Requirement.find(params[:id])

    render("requirements/edit.html.erb")
  end

  def update
    @requirement = Requirement.find(params[:id])

    @requirement.employee_id = params[:employee_id]
    @requirement.department_id = params[:department_id]
    @requirement.elearning_id = params[:elearning_id]

    save_status = @requirement.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/requirements/#{@requirement.id}/edit", "/update_requirement"
        redirect_to("/requirements/#{@requirement.id}", :notice => "Requirement updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Requirement updated successfully.")
      end
    else
      render("requirements/edit.html.erb")
    end
  end

  def destroy
    @requirement = Requirement.find(params[:id])

    @requirement.destroy

    if URI(request.referer).path == "/requirements/#{@requirement.id}"
      redirect_to("/", :notice => "Requirement deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Requirement deleted.")
    end
  end
end
