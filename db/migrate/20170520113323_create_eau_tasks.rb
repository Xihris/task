class CreateEauTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :eau_tasks do |t|
      t.string :name
      t.date :date_start
      t.date :date_end
      t.integer :id_task_temp
      t.references :author, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
