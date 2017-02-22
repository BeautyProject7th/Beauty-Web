class Cosmetic < ApplicationRecord
  belongs_to :brand, optional: true

  	require 'csv'

  	def Cosmetic.import(file, brand_id)
		CSV.foreach(file.path, encoding:'iso-8859-1:utf-8', headers: true) do |row|
			c = Cosmetic.new
			c.cate = row[0]
			c.sub_cate = row[1]
			c.pdName = row[2]
			c.pdImg = row[3]
			c.brand_id = brand_id.id
			c.save!			
		end
	end
end
