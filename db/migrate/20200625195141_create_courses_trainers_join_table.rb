class CreateCoursesTrainersJoinTable < ActiveRecord::Migration[6.0]
  def change
  	create_join_table :courses, :trainers do |t|
  		t.index :course_id
  		t.index :trainer_id
  	end
  end
end
