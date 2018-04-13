class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state, limit: 2
      t.string :zip, limit: 10
      t.string :phone, limit: 12

      t.timestamps
    end
    add_index :organizations, :name, unique: true
    add_index :organizations, :phone, unique: true
  end
end
