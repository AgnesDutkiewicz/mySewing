# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Item.destroy_all == Item.all.destroy_all
Item.destroy_all
ItemVersion.destroy_all

10.times do |index|
    item = Item.create(name: "Item with number #{index + 1}")
    ItemVersion.create(item: item, size: 'M', color: 'green')
    ItemVersion.create(item: item, size: 'L', color: 'green')
    ItemVersion.create(item: item, size: 'M', color: 'blue')
    ItemVersion.create(item: item, size: 'L', color: 'blue')
end
