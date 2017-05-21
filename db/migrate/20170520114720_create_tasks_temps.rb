class CreateTasksTemps < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks_temps do |t|
      t.string :name
      t.date :date_start
      t.date :date_end
      t.integer :author_id

      t.timestamps
    end
  end
end
