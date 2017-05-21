class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.date :date_finish
      t.integer :id_temp_tasks
      t.integer :quan_u
      t.integer :quan_f
      t.text :comment
      t.integer :inn
      t.integer :ogrn
      t.integer :id_eau_tasks

      t.timestamps
    end
  end
end
