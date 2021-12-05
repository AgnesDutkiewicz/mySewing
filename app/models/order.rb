class Order < ApplicationRecord
    belongs_to :client
    belongs_to :item_versions, class_name: ItemVersion.to_s
end
