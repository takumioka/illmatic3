class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :teacher_no
      t.string :password_digest
      t.string :k_class
      t.string :name

      t.timestamps
    end
  end
end
