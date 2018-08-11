class ElearningsController < ApplicationController
  def index
    @q = Elearning.ransack(params[:q])
    @elearnings = @q.result(:distinct => true).includes(:participations, :requirements).page(params[:page]).per(10)

    render("elearnings/index.html.erb")
  end

  def show
    @requirement = Requirement.new
    @participation = Participation.new
    @elearning = Elearning.find(params[:id])

    render("elearnings/show.html.erb")
  end

  def new
    @elearning = Elearning.new

    render("elearnings/new.html.erb")
  end

  def create
    @elearning = Elearning.new

    @elearning.title = params[:title]
    @elearning.duration = params[:duration]
    @elearning.link = params[:link]
    @elearning.due_date = params[:due_date]

    save_status = @elearning.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/elearnings/new", "/create_elearning"
        redirect_to("/elearnings")
      else
        redirect_back(:fallback_location => "/", :notice => "Elearning created successfully.")
      end
    else
      render("elearnings/new.html.erb")
    end
  end

  def edit
    @elearning = Elearning.find(params[:id])

    render("elearnings/edit.html.erb")
  end

  def update
    @elearning = Elearning.find(params[:id])

    @elearning.title = params[:title]
    @elearning.duration = params[:duration]
    @elearning.link = params[:link]
    @elearning.due_date = params[:due_date]

    save_status = @elearning.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/elearnings/#{@elearning.id}/edit", "/update_elearning"
        redirect_to("/elearnings/#{@elearning.id}", :notice => "Elearning updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Elearning updated successfully.")
      end
    else
      render("elearnings/edit.html.erb")
    end
  end

  def destroy
    @elearning = Elearning.find(params[:id])

    @elearning.destroy

    if URI(request.referer).path == "/elearnings/#{@elearning.id}"
      redirect_to("/", :notice => "Elearning deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Elearning deleted.")
    end
  end
end
