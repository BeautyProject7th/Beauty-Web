class Brand < ApplicationRecord
	has_many :cosmetics
	validates_presence_of :brand, presence: true, length: {minimum:1}
end
