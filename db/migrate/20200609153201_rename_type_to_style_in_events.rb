class RenameTypeToStyleInEvents < ActiveRecord::Migration[6.0]
  def up
  	rename_column :events, :type, :style
  end

  def down
  	rename_column :events, :style, :type
  end
end
