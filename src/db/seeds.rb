# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    {
        first_name: "Daniel",
        last_name: "Bailey",
        role: "Entrepreneur"
        companies: [
            Company.new(name: "Grocerly"),
            Company.new(name: "Foodler")
        ]
    },
    {
        first_name: "Josh",
        last_name: "Brown",
        role: "Entrepreneur",
        companies: [
            Company.new(name: "Goblimp")
        ]
    },
    {
        first_name: "Tyson",
        last_name: "Anderson",
        role: "Investor"
    },
    {
        first_name: "Jimi",
        last_name: "Hendrix",
        role: "Investor"
    }
]

User.destroy_all
User.create(users)