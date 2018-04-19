class AddFieldsToInteraction < ActiveRecord::Migration[5.2]
  def change
    add_column :interactions, :first_name, :string, limit: 25, required: true
    add_column :interactions, :last_name, :string, limit: 25, required: true
    add_column :interactions, :email, :string, limit: 40, required: true
    add_column :interactions, :phone, :string, limit: 14
    add_column :interactions, :street_address, :string, limit: 75
    add_column :interactions, :city, :string, limit: 30
    add_column :interactions, :state, :string, limit: 2
    add_column :interactions, :zip, :string, limit: 10
    add_column :interactions, :subject, :string, limit: 100, required: true
    change_column :interactions, :comment, :text, required: true
  end
end
