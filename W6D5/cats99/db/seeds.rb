# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
c1 = Cat.create(birth_date: "10-10-2000", color: "grey", name: "Maddie", description: "Very cool looking cat", sex: "F")

c2 = Cat.create(birth_date: "25-12-1991", color: "radioactive", name: "George", description: "King cat wow", sex: "M")

c3 = Cat.create(birth_date: "1-1-2020", color: "yellow", name: "Kitten", description: "Cute baby cat wow", sex: "F")

c4 = Cat.create(birth_date: "14-03-1960", color: "white", name: "Thomas", description: "chases Jerry", sex: "M")

c5 = Cat.create(birth_date: "10-10-2010", color: "gold", name: "Yvon", description: "Maddie's sister", sex: "F")




