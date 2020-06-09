require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { class: @event.class, client_name: @event.client_name, date: @event.date, email: @event.email, format: @event.format, num_students: @event.num_students, requested_by: @event.requested_by, start_time: @event.start_time, trainer: @event.trainer, type: @event.type } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { class: @event.class, client_name: @event.client_name, date: @event.date, email: @event.email, format: @event.format, num_students: @event.num_students, requested_by: @event.requested_by, start_time: @event.start_time, trainer: @event.trainer, type: @event.type } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
