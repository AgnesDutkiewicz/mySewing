class ApiCategoriesSerializer
  def serialize(items)
    items.map do |item|
      { id: item.id, name: item.name, category: item.category, subname: item.subname }
    end
  end
end
