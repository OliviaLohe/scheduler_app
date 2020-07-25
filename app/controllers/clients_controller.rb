class ClientsController < ApplicationController
  def index
  	@clients = Client.all
  end

  def import
  	Client.import(params[:file])
  	redirect_to root_url, notice: "Client Data Imported!"
  end
end
