class AddRequirementCountToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :requirements_count, :integer
  end
end
