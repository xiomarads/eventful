class EventsController < ApplicationController
  def index
    @featuredevents = Event.all
    render :index
  end

  def search
		search_date = params[:date]
    search_location =  params[:location]
	  @results = Event.where(location: search_location)
    .where(date: search_date.beginning_of_day..search_date.end_of_day)
		render :search_results
	end
end
