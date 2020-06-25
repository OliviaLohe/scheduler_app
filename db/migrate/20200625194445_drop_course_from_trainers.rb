class DropCourseFromTrainers < ActiveRecord::Migration[6.0]
  def change
  	remove_column :trainers, :course_id
  end
end
