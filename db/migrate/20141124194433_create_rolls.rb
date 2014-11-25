class CreateRolls < ActiveRecord::Migration
  def change
    create_table :rolls do |t|
      t.integer :roll
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
