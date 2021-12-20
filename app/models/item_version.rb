class ItemVersion < ApplicationRecord
  belongs_to :item
  has_many :orders

  def list_display_name
    "#{item.name}, size: #{size}, color: #{color}"
  end
end
