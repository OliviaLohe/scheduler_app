class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :client_name
      t.string :course
      t.string :type
      t.string :format
      t.date :event_date
      t.time :start_time
      t.string :trainer
      t.integer :num_students
      t.string :requested_by
      t.text :email

      t.timestamps
    end
  end
end
