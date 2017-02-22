class AddConfirmToCosmetics < ActiveRecord::Migration[5.0]
  def change
    add_column :cosmetics, :seula, :boolean
    add_column :cosmetics, :mijung, :boolean
    add_column :cosmetics, :juwon, :boolean
  end
end
