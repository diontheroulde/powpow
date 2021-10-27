class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :username, limit: 10, index: {unique: true}
     
      t.string :password_digest

      t.timestamps
    end
  end
end
