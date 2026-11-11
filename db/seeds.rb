puts "Cleaning the DB.."
HauntedHouse.destroy_all

puts "Creating houses..."
haunted_house = HauntedHouse.new(
  name: "Transylvania",
  banner_url: 'https://rolandia.eu/wp-content/uploads/2025/04/imported_68090b93da6233.44762676.jpg'
)
haunted_house.save!
puts "... created #{HauntedHouse.count} houses."

puts "creating monsters...."
monster = Monster.new(
  name: 'Dracula',
  image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi42PnMoJEawLJWVtAJ-xv82aa6YtjAe0qtJs9hm8gQi5ujQtRyqUCKrB0&s=10',
  category: 'Vampire',
  haunted_house: haunted_house
)
monster.save!
