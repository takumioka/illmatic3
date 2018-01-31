class CreateBulletinboards < ActiveRecord::Migration[5.1]
  def change
    create_table :bulletinboards do |t|
      t.references :student, foreign_key: true      
      t.text :messagecontent
      t.string :nickname

      t.timestamps
    end
  end
end
