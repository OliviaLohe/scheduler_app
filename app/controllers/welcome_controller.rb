class WelcomeController < ApplicationController
	layout 'application'
  def index
  	@events = Event.where(start_time: Date.current.all_month)
  end

end
