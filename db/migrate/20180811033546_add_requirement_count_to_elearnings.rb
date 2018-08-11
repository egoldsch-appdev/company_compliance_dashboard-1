class AddRequirementCountToElearnings < ActiveRecord::Migration[5.0]
  def change
    add_column :elearnings, :requirements_count, :integer
  end
end
