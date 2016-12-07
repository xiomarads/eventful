class EventsController < ApplicationController

  def index
    @events = Event.order(date: :asc)
    render :index
  end



  def filter_search
  @events = Event.all
    if params[:city].present?
      @events = @events.where(city: params[:city])
  end
     if params[:category].present?
        @events = @events.where(category: params[:category])
    end

      if params[:event_type].present?
        @events = @events.where(event_type: params[:event_type])
    end

      if params[:cost].present?
        @events = @events.where(cost: params[:cost])
    end

    if params[:date].present?
      @events = @events.where(date: params[:date])
  end
    render :filter_search
end



  def search_results
		search_date = params[:date]
    converted_date = search_date.to_date
    search_location =  params[:city]
	  @results = Event.where(city: search_location)
    .where(date: converted_date.beginning_of_day..converted_date.end_of_day)
		render :search_results
	end

  def show
  @event = Event.find params[:id]
  render :show
end

  def new
    authenticate_user!
    @user = current_user
    @event = Event.new
    render :new
  end

def create
  @event = Event.new(event_params)
  @event.save
  redirect_to "/events"
end


  def edit
    @event = Event.find(params[:id])
    render :edit
  end


  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to events_path(@event)
    else
      render :edit
    end
  end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        redirect_to  events_path(event)
    end

  private

  def event_params
       params.require(:event).permit(:title, :city, :location, :description, :date, :price, :poster, :event_link)
   end
end
