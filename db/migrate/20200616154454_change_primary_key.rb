class ChangePrimaryKey < ActiveRecord::Migration[6.0]
  def change
  	execute "ALTER TABLE trainers ADD PRIMARY KEY (id, course_id);"
  end
end
