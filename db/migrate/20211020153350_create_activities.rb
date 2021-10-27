class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.references :user
      t.references :instructor

      t.datetime :lesson_time

      t.timestamps
    end
  end
end
