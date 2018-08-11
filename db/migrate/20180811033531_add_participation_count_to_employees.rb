class AddParticipationCountToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :participations_count, :integer
  end
end
