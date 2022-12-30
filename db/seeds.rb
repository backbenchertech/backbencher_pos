# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |i|
    company=Company.create(
        name: "Backbencher Technologies #{i}",
        email: "backbenchertechnologies#{i}@gmail.com",
        phone_no: "9616139330",
        gst: "23AAKCB2847F1ZU",
        cin: "U72900MP2021PTC058300", 
        pan: "PCGPS5500G"
    )
    puts " Company no #{i}"
        10.times do |j|
            Address.create(
                name: "Backbencher Technologies #{j}",
                ad_line1: "C21#{j}",
                ad_line2: "Vijay Nagar#{j}",
                area: "Malviya Nagar#{j}",
                city: "Indore#{j}",
                country: "India#{j}",
                pin_code: 462010,
                phone: "4759385346",
                addressable_id: company.id,
                addressable_type: company.class.name
            )
            puts "Address no is #{j}"
        end
                10.times do |k|
                    User.create(
                        first_name: "Tanya #{k}",
                        last_name: "sahu #{k}",
                        email: "tanya123@gmail.com #{k}",
                        phone_no: "7879502946 #{k}",
                        password: "tanya123 #{k}",
                    )
                    puts "User no is #{k}"
                end
end