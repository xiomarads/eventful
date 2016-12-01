class EventsController < ApplicationController
  def index
    @featuredevents = Event.all
    render :index
  end

  def search_results
		search_date = params[:date]
    converted_date = search_date.to_date
    search_location =  params[:location]
	  @results = Event.where(location: search_location)
    .where(date: converted_date.beginning_of_day..converted_date.end_of_day)

		render :search_results
	end
end
