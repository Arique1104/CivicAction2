class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :action
      t.string :directions
      t.string :submission_confirmation
      t.integer :points
      t.string :status

      t.timestamps
    end
  end
end
