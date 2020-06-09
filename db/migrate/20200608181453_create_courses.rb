class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :frequency
      t.integer :duration
      t.integer :base_price

      t.timestamps
    end
  end
end
