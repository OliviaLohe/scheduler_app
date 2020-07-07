class RemoveTrainerAndClientAssociations < ActiveRecord::Migration[6.0]
  def change
  	remove_column :trainers, :event_id 
  	remove_column :clients, :event_id
  end
end
