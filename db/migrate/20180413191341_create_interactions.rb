class CreateInteractions < ActiveRecord::Migration[5.2]
  def change
    create_table :interactions do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.text :comment
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
