# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Array of all of the information to be used for testing
roles = [
    {
        name: "Entrepreneur",
        users: [
            User.new(
                first_name: "Dan",
                last_name: "Bailey",
                companies: [
                    Company.new(name: "Helsinki", location: "Sydney", price: 3000),
                    Company.new(name: "Mafiano", price: 5000),
                    Company.new(name: "Synera", location: "Adelaide", price: 2000)
                ]
            ),
            User.new(
                first_name: "Yuusuke",
                last_name: "Nagata",
                companies: [
                    Company.new(name: "Monster-Plex", location: "Brisbane", price: 1000)
                ]
            ),
            User.new(
                first_name: "Anthony",
                last_name: "Beck",
                companies: [
                    Company.new(name: "Shopcorn", location: "Brisbane", price: 1000),
                    Company.new(name: "GrocerHQ", location: "Brisbane", price: 3000)
                ]
            )
        ]
    },
    {
        name: "Investor",
        users: [
            User.new(first_name: "Brayden", last_name: "O'Gorman"),
            User.new(first_name: "Jack", last_name: "McKeown")
        ]
    }
]

# Removes all of the current roles in the system, which will also remove the dependents i.e. users and companies
Role.destroy_all

# Seeds the database with the above array
Role.create(roles)