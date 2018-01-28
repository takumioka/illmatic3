class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string :grade
      t.references :student, foreign_key: true
      t.references :subject, foreign_key: true      

      t.timestamps
    end
  end
end
