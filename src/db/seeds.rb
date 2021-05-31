# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all
entrepreneur = Role.create(name: "Entrepreneur")
investor = Role.create(name: "Investor")
administrator = Role.create(name: "Administrator")

users = [
    {
        first_name: "Daniel",
        last_name: "Bailey",
        roles: [entrepreneur],
        companies: [
            Company.new(name: "Grocerly"),
            Company.new(name: "Foodler")
        ]
    },
    {
        first_name: "Josh",
        last_name: "Brown",
        roles: [investor],
        companies: [
            Company.new(name: "Goblimp", cost: 5000)
        ]
    },
    {
        first_name: "Tyson",
        last_name: "Anderson",
        roles: [entrepreneur, investor]
    },
    {
        first_name: "Jimi",
        last_name: "Hendrix",
        roles: [administrator]
    }
]

User.destroy_all
User.create(users)
