class Product < ApplicationRecord
	has_many :order_items
	has_attached_file :image, styles: { medium: '400x400>', thumb: '48x48>' }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
