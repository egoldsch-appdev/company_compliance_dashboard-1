class AddEmployeeCountToDepartments < ActiveRecord::Migration[5.0]
  def change
    add_column :departments, :employees_count, :integer
  end
end
