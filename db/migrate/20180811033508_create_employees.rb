class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :mcm_userid
      t.string :first_name
      t.string :last_name
      t.date :doh
      t.integer :branch
      t.date :dept_start_date
      t.integer :prev_dept_id
      t.date :prev_dept_start_date
      t.integer :department_id

      t.timestamps

    end
  end
end
