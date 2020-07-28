class WelcomeController < ApplicationController
	layout 'application'
  def index
  	# this variable gets only events happening in the current month to display
  	# on the calendar
  	@events = Event.where(start_time: Date.current.all_month)
  end

end
