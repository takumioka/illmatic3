class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :subject_no
      t.string :subject_name

      t.timestamps
    end
  end
end
