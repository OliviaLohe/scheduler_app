class AddTrainerReferenceToEvents < ActiveRecord::Migration[6.0]
  def change
  	add_foreign_key :events, :trainers
  end
end
