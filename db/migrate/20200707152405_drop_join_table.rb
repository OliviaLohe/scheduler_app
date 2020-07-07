class DropJoinTable < ActiveRecord::Migration[6.0]
  def change
  	drop_join_table :courses, :events
  end
end
