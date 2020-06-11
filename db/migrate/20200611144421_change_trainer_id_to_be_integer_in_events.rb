class ChangeTrainerIdToBeIntegerInEvents < ActiveRecord::Migration[6.0]
  def change
  	change_column :events, :trainer_id, :integer, using: 'trainer_id::integer'
  end
end
