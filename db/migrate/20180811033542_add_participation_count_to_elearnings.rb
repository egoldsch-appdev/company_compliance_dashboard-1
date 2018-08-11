class AddParticipationCountToElearnings < ActiveRecord::Migration[5.0]
  def change
    add_column :elearnings, :participations_count, :integer
  end
end
