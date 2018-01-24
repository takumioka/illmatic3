class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :subjects_id
      t.string :subject_name

      t.timestamps
    end
  end
end
