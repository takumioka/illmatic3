class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :teacher_no
      t.string :k_class
      t.string :number
      t.string :name
      t.boolean :admin

      t.timestamps
    end
  end
end
