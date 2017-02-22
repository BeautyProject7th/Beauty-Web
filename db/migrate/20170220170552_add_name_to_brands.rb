class AddNameToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :crawler, :string
  end
end
