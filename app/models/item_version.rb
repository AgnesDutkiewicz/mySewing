class ItemVersion < ApplicationRecord
    belongs_to :item
    has_many :order

    def list_display_name
        (item.name + " size: " + size)
    end

    # Fix this :point_up: to use a single "String with #{variable}"
end
