class CreateCosmetics < ActiveRecord::Migration[5.0]
  def change
    create_table :cosmetics do |t|
      t.string :cate
      t.string :sub_cate
      t.string :pdName
      t.text :pdImg
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
