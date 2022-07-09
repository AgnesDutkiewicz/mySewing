class TypesSerializer
  def serialize(categories)
    categories.map do |category|
      { type: category }
    end
  end
end
