class ItemVersion < ApplicationRecord
    belongs_to :item
    has_many :order

    def list_display_name
        "#{item.name} size: #{size}"
    end
end
