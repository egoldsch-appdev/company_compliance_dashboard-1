class ParticipationsController < ApplicationController
  def index
    @participations = Participation.page(params[:page]).per(10)

    render("participations/index.html.erb")
  end

  def show
    @participation = Participation.find(params[:id])

    render("participations/show.html.erb")
  end

  def new
    @participation = Participation.new

    render("participations/new.html.erb")
  end

  def create
    @participation = Participation.new

    @participation.employee_id = params[:employee_id]
    @participation.elearning_id = params[:elearning_id]

    save_status = @participation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/participations/new", "/create_participation"
        redirect_to("/participations")
      else
        redirect_back(:fallback_location => "/", :notice => "Participation created successfully.")
      end
    else
      render("participations/new.html.erb")
    end
  end

  def edit
    @participation = Participation.find(params[:id])

    render("participations/edit.html.erb")
  end

  def update
    @participation = Participation.find(params[:id])

    @participation.employee_id = params[:employee_id]
    @participation.elearning_id = params[:elearning_id]

    save_status = @participation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/participations/#{@participation.id}/edit", "/update_participation"
        redirect_to("/participations/#{@participation.id}", :notice => "Participation updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Participation updated successfully.")
      end
    else
      render("participations/edit.html.erb")
    end
  end

  def destroy
    @participation = Participation.find(params[:id])

    @participation.destroy

    if URI(request.referer).path == "/participations/#{@participation.id}"
      redirect_to("/", :notice => "Participation deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Participation deleted.")
    end
  end
end
