class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :employee_id
      t.integer :elearning_id

      t.timestamps

    end
  end
end
