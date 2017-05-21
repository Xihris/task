class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :phone
      t.string :department
      t.string :photo
      t.references :eau_tasks

      t.timestamps
    end
  end
end
