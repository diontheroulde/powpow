class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :activity
      t.integer :user_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
