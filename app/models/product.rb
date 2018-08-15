class Product < ApplicationRecord
	validates :Codigo, presence: true
	validates :Descripcion, presence: true
	validates :Unidad, presence: true
	validates :PorcImpuesto, presence: true
	validates :Precio, presence: true
end
