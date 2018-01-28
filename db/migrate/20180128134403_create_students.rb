class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :password_digest
      t.string :k_class
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
