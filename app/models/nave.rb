class Nave < ApplicationRecord
	has_many :empleado
	has_many :product
	has_many :vuelo
end
