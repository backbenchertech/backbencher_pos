# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |i|
    company=Company.create(
        name: "Backbencher Technologies #{i} ",
        email: "backbenchertechnologies#{i}@gmail.com",
        phone_no: "961613933#{i}",
        gst: "23AAKCB28#{i}7F1ZU",
        cin: "U72900MP2021PTC0583#{i}0", 
        pan: "HDSP1#{i}3JDS"
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
                phone: "475938534#{j}",
                addressable_id: company.id,
                addressable_type: company.class.name
            )
            puts "Address no is #{j}"
        end
end