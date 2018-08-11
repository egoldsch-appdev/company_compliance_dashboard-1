class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :employee_id
      t.integer :department_id
      t.integer :elearning_id

      t.timestamps

    end
  end
end
