class Product < ApplicationRecord
    has_many :order_items
    has_many :assignments
    validates :title, presence: true, uniqueness: true
    validates :price, presence: true
    validates :title, presence: true
    accepts_nested_attributes_for :assignments
    has_many :colors, through: :assignments
end
