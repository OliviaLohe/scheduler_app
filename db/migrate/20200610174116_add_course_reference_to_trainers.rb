class AddCourseReferenceToTrainers < ActiveRecord::Migration[6.0]
  def change
  	add_foreign_key :trainers, :courses
  end
end
