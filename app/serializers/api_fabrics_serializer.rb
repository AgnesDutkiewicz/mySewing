class ApiFabricsSerializer
  def serialize(fabrics)
    fabrics.map do |fabric|
      { id: fabric.id, name: fabric.name, category: fabric.category, grammage: fabric.grammage }
    end
  end
end
