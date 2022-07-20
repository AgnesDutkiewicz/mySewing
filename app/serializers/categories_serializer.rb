class CategoriesSerializer
  def serialize(categories)
    categories.map do |category|
      { name: category }
    end
  end
end
