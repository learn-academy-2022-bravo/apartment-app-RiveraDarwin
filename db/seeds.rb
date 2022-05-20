# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# ADD SEED DATA
user1 = User.create email: 'testuser1@test.com', password: 'something', password_confirmation: 'something'
user2 = User.create email: 'testuser2@test.com', password: 'something', encrypted_password: 'something'

apartments =[
    {
    street: '102 Happy Street', 
    city: 'San Jose', 
    state: 'California',
    manager: 'Deenice Nice',
    email: 'deenice@test.com',
    price: '$2500',
    bedrooms: 1, 
    bathrooms: 1,
    pets: 'Yes',
    image: 'https://images.unsplash.com/photo-1541292844818-2a39a2003bdc?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687',
    user_id: user1.id
  },
  {
    street: '201 Hyphy Street', 
    city: 'Oakland', 
    state: 'California',
    manager: 'John Smit',
    email: 'John@test.com',
    price: '$1500',
    bedrooms: 2, 
    bathrooms: 1,
    pets: 'No',
    image: 'https://images.unsplash.com/photo-1563127673-00fb29e7eeae?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
    user_id: user2.id
  }
]

apartments.each do |apartment|
    Apartment.create apartment
  puts "creating apartment #{apartment}"
end
