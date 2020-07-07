class ChangeCourseInEventsToArray < ActiveRecord::Migration[6.0]
  def change
  	change_column :events, :course, 'text USING course::text[]'
  end
end
