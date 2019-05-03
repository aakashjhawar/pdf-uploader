class AddAttachment3ToResumes < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :attachment3, :string
  end
end
