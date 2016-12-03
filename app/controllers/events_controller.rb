class EventsController < ApplicationController
  def index
    @featuredevents = Event.all
    render :index
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
        :price => params[:event][:price])
  @event.save
  redirect_to "/"
end
end
