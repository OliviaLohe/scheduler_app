class CreateCourseTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :course_trainers do |t|
      t.references :course, null: false, foreign_key: true
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
