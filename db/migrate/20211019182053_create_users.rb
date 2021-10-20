class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :password_confirmation
      t.string :password_digest
      t.boolean :snowboard, default: true

      t.timestamps
    end
  end
end
