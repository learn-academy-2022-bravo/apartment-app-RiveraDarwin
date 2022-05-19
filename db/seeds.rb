# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# ADD SEED DATA
user = User.where(email: 'testuser@test.com').first_or_create(password: '0987654321', password_confirmation: '0987654321')

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
    image: 'https://images.unsplash.com/photo-1541292844818-2a39a2003bdc?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687'
    
  },{
    street: '201 Hyphy Street', 
    city: 'Oakland', 
    state: 'California',
    manager: 'John Smit',
    email: 'John@test.com',
    price: '$1500',
    bedrooms: 2, 
    bathrooms: 1,
    pets: 'No',
    image: 'https://images.unsplash.com/photo-1563127673-00fb29e7eeae?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170'
    
  }
]

apartments.each do |each_apartment|
    user.apartments.create each_apartment
  puts "creating apartment #{each_apartment}"
end
