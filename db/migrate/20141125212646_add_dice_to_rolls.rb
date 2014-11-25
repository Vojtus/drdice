class AddDiceToRolls < ActiveRecord::Migration
  def change
    add_column :rolls, :dice, :integer
  end
end
