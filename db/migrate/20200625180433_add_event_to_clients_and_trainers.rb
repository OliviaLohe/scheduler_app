class AddEventToClientsAndTrainers < ActiveRecord::Migration[6.0]
  def change
  	add_reference :clients, :event
  	add_reference :trainers, :event
  end
end
