class RenameTrainerToTrainerId < ActiveRecord::Migration[6.0]
  def change
  	rename_column :events, :trainer, :trainer_id
  end
end
