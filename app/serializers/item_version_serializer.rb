class ItemVersionSerializer
  def serialize(item_versions)
    item_versions.map do |item_version|
      { id: item_version.id, size: item_version.size, color: item_version.color }
    end
  end
end