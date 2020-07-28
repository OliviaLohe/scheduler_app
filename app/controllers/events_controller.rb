class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show

    # these variables are used to get the names of courses, clients, and trainers
    # because only their IDS are being stored in the Event table
    @course_ids = @event.course_ids
    @course_names = Course.find(@course_ids)
    @trainer_id = @event.trainer_id
    @trainer_name = Trainer.find(@trainer_id)

    @client_id = @event.client_name
    @client = Client.find(@client_id)
  end

  # GET /events/new
  def new

    # these variables are used to get the names of clients because only their IDS are being stored in the Event table
    @event = Event.new
    @events = Event.all
    @clients = Client.all

    # these variables are used to display the current and next month on the rwo
    # calendars on the 'New Event' page (events/new.erb)
    # BECAUSE OF THESE VARIABLES, THE 'NEXT' AND 'PREVIOUS' LINKS ON THE CALENDARS
    # ON THE NEW EVENT PAGE DO NOT WORK PROPERLY
    @current_date = Date.today.beginning_of_month
    @start_date = @current_date
    @next_month = @start_date.next_month
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy

    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:client_name, :renewal, :format, :event_date, :start_time, :trainer_id, :num_students, :requested_by, :email, :course_ids => [])
    end
end
