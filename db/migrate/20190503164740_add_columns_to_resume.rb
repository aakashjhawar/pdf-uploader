class AddColumnsToResume < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :attachment1, :string
		add_column :resumes, :attachment2, :string
	end
end
