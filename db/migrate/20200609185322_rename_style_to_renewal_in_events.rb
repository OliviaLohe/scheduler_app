class RenameStyleToRenewalInEvents < ActiveRecord::Migration[6.0]
  def up
    rename_column :events, :style, :renewal
  end

  def down
    rename_column :events, :renewal, :style
  end
end
