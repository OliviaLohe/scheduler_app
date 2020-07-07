class CreateCoursesEventsJoinTable < ActiveRecord::Migration[6.0]
  def change
  	create_join_table :courses, :events do |t|
  		t.index :course_id
  		t.index :event_id
  	end
  end
end
