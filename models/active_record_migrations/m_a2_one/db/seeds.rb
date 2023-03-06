# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

devices = Device.create!(
    [
        {device_type: "Laptop", model: "Lenovo"},
        {device_type: "Desctop", model: "Lenovo"},
        {device_type: "Laptop", model: "Dell"},
        {device_type: "Desctop", model: "Dell"},
        {device_type: "laptop", model: "Mac"},
        {device_type: "Desctop", model: "Mac"}
    ]
)

Person.create!(
    [
        { name: "Tim", age: 43, device_id: devices[1].id },
        { name: "James", age: 38, device_id: devices[3].id },
        { name: "Kendra", age: 27, device_id: devices[5].id }
    ]
)

# device = Device.create! device_type: "Laptop", model: "Lenovo"
# Person.create! name: "Tim", age: 43, device_id: device.id