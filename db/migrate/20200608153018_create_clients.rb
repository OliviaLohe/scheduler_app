class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :primary_contact
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
