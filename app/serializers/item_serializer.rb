class ItemSerializer
  def serialize(items)
    items.map do |item|
      { id: item.id, name: item.name }
    end
  end
end