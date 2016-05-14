class Store < ApplicationRecord
	has_many :products
	belongs_to :listing_type
	belongs_to :listing_duration
	belongs_to :condition_type
	validates :store_name, presence: true
end
