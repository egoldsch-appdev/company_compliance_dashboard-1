class CreateElearnings < ActiveRecord::Migration
  def change
    create_table :elearnings do |t|
      t.string :title
      t.string :duration
      t.string :link
      t.date :due_date

      t.timestamps

    end
  end
end
