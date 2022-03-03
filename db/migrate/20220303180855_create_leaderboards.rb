class CreateLeaderboards < ActiveRecord::Migration[7.0]
  def change
    create_table :leaderboards do |t|
      t.text :description
      t.boolean :deadline
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
