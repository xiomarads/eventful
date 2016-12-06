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
  @event = Event.new(
        :title => params[:event][:title],
        :city => params[:event][:city],
        :location => params[:event][:location],
        :description => params[:event][:description],
        :date => params[:event][:date],
        :price => params[:event][:price],
        :poster => params[:event][:poster],
        :event_link => params[:event][:event_link])
  @event.save
  redirect_to "/events"
end
end
