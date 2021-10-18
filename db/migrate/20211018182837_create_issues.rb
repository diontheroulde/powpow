class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.integer :user_id
      t.integer :character_id
      t.string :title
      t.string :description
      t.string :cover_date

      t.timestamps
    end
  end
end
