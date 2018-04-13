class AddOganizationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :organization, foreign_key: true, null: true
  end
end
