class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.float :lat
      t.float :long
      t.integer :area

      t.timestamps
    end
    add_index :projects, :name, unique: true
  end
end
