class DepartmentsController < ApplicationController
  def index
    @q = Department.ransack(params[:q])
    @departments = @q.result(:distinct => true).includes(:employees, :requirements).page(params[:page]).per(10)

    render("departments/index.html.erb")
  end

  def show
    @requirement = Requirement.new
    @employee = Employee.new
    @department = Department.find(params[:id])

    render("departments/show.html.erb")
  end

  def new
    @department = Department.new

    render("departments/new.html.erb")
  end

  def create
    @department = Department.new

    @department.name = params[:name]
    @department.mcm_id = params[:mcm_id]

    save_status = @department.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/departments/new", "/create_department"
        redirect_to("/departments")
      else
        redirect_back(:fallback_location => "/", :notice => "Department created successfully.")
      end
    else
      render("departments/new.html.erb")
    end
  end

  def edit
    @department = Department.find(params[:id])

    render("departments/edit.html.erb")
  end

  def update
    @department = Department.find(params[:id])

    @department.name = params[:name]
    @department.mcm_id = params[:mcm_id]

    save_status = @department.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/departments/#{@department.id}/edit", "/update_department"
        redirect_to("/departments/#{@department.id}", :notice => "Department updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Department updated successfully.")
      end
    else
      render("departments/edit.html.erb")
    end
  end

  def destroy
    @department = Department.find(params[:id])

    @department.destroy

    if URI(request.referer).path == "/departments/#{@department.id}"
      redirect_to("/", :notice => "Department deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Department deleted.")
    end
  end
end
