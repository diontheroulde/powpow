class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string :origin
      t.string :powers
      t.string :appearances
      t.string :character_enemies
      t.string :character_friends

      t.timestamps
    end
  end
end
