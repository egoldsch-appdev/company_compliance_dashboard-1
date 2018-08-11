class AddRequirementCountToDepartments < ActiveRecord::Migration[5.0]
  def change
    add_column :departments, :requirements_count, :integer
  end
end
