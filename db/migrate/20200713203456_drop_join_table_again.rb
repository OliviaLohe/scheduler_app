class DropJoinTableAgain < ActiveRecord::Migration[6.0]
  def change
  	drop_join_table :courses, :trainers
  end
end
