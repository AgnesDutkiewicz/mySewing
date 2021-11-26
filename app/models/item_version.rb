class ItemVersion < ApplicationRecord
    belongs_to :item
    has_many :order
end
