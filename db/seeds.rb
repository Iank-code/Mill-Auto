# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "seeding users..."

10.times do
    User.create(
        username: Faker::Name.unique.name,
        email: Faker::Internet.unique.email,
        password: Faker::Internet.password
    )
    
end


puts "seeding users complete"

# puts "seeding users complete"

# puts "seeding reviews..."

# 10.times do

# end
# puts "seeding review complete"

puts "seeding cars..."

Car.create(model: "Mercedes c200", year_of_manufacture: 2017, transmission: "automatic", fuel_type: "diesel", price: 3500000, front_right_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1670116038719-MN6RFJ5W98QBBPBWWKUF/IMG_7524.jpg?format=1500w", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1670116038681-X5FL7ZSF4WZ3UYG7MEJY/IMG_7532.jpg?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1670116053194-MLKNMR80FDW74DWPI6XZ/IMG_7501.jpg?format=1500w", user_id: 1)
Car.create(model: "Volvo S60 T5 2.0T", year_of_manufacture: 2018, transmission: "manual", fuel_type: "petrol", price: 4000000, front_right_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1678223564515-QCGFI2R5R7I888SWCZMY/P1010167.JPG?format=1500w", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1678223564515-QCGFI2R5R7I888SWCZMY/P1010167.JPG?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1678223375688-TJ62GJMXWW9HAQP1P8HV/P1010170.JPG?format=1500w", user_id: 2)
Car.create(model: "Mazda CX-5 2.2 XD-L Package", year_of_manufacture: 2016, transmission: "automatic", fuel_type: "diesel", price: 1700000, front_right_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1664341792789-H40ALNA6P2NU9F7L0I4C/IMG_8175.jpg?format=1500w", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1662181739690-Y8R86PAG0TGVS8RF4RGV/_MG_5339.jpg?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1662181753015-DKMXYOMSVQN5GMZIX3LE/_MG_5302.jpg?format=1500w", user_id: 3)
Car.create(model: "Lexus RX200T AWD", year_of_manufacture: 2019, transmission: "manual", fuel_type: "petrol", price: 3100000, front_right_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1677299250574-BB5EAVPSLT3464GK619Y/DSCF8263.JPG?format=1500w", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1662181739690-Y8R86PAG0TGVS8RF4RGV/_MG_5339.jpg?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1662181753015-DKMXYOMSVQN5GMZIX3LE/_MG_5302.jpg?format=1500w", user_id: 4)
Car.create(model: "Toyota Prado", year_of_manufacture: 2017, transmission: "automatic", fuel_type: "petrol", price:4700000, front_right_url: "https://dashboard.kaiandkaro.com/media/vehicles/images/WhatsApp_Image_2023-03-10_at_18.21.03_1.jpeg", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1675984738242-5FN3X72XBS34MU78QOH2/IMG_1286.jpg?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1675984667184-SQ0G30X4CMMXNULEFU7D/IMG_1281.jpg?format=1500w", user_id: 5)
Car.create(model: "BMW X1 LCI X-DRIVE20I", year_of_manufacture: 2018, transmission: "automatic", fuel_type: "petrol", price: 1100000, front_right_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1677300513889-IDA1P9YQXO1TTADE6Z4Q/img0005.jpg?format=1500w", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1677300511338-V3A77EFE1WLT94OMS8QE/img0002.jpg?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1677300534390-PEU4LG2IT1SUWFVOMY6E/img0028.jpg?format=1500w", user_id: 6)
Car.create(model: "Audi Q3 2.0T Quattro", year_of_manufacture: 2015, transmission: "manual", fuel_type: "petrol", price: 2300000, front_right_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1675984321280-FFRX9NA2A6YDP19I8QKR/IMG_6726.jpg?format=1500w", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1658450248004-LEODXR6MD885BPYTUF5Q/DSC09878.jpg?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1658450262688-WGZ8L3VZEEX0RYKI5BMU/DSC09881.jpg?format=1500w", user_id: 7)
Car.create(model: "BMW X6 X-DRIVE35I LCI", year_of_manufacture: 2020, transmission: "automatic", fuel_type: "petrol", price: 6700000, front_right_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1672343105662-BL74MGY246PZD2W9PPL6/IMG_0666.jpg?format=1500w", back_left_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1672343140549-VY6RXB6VOII4DE5A8JQT/IMG_0637.jpg?format=1500w", interior_url: "https://images.squarespace-cdn.com/content/v1/5aac1f6a5cfd796d520a4a7a/1672343357269-64ZHTG5HVFT0UZX2523C/IMG_0632.jpg?format=1500w", user_id: 8)
# Car.create(model: "Jeep Grand Cherokee", year_of_manufacture: 2019, transmission: "automatic", fuel_type: "petrol" price: 3900000, front_right_url: back_left_url: back_right_url: interior_url: user_id: 9)
# Car.create(model: " Lexus NX200T", year_of_manufacture: 2017, transmission: "manual", fuel_type: "diesel", price: 2900000, front_right_url: back_left_url: back_right_url: interior_url: user_id: 10)

puts "seeding cars complete"