class AddForeignKeyToClientAndTrainer < ActiveRecord::Migration[6.0]
  def change
  	add_foreign_key :clients, :events
  	add_foreign_key :trainers, :events
  end
end
