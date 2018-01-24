class RemoveSubjectSubjectsId < ActiveRecord::Migration[5.1]
  def change
    remove_column :subjects, :subjects_id    
  end
end
