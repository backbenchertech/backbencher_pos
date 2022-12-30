# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# create company sample data
5.times do |i|
  company=Company.create(
    name: "Backbencher Technologies #{i}",
    email: "backbenchertechnologies#{i}@gmail.com",
    phone_no: "9616139330",
    gst: "23AAKCB2847F1ZU",
    cin: "U72900MP2021PTC058300", 
    pan: "PCGPS5500G"
  )

  # create product type sample data
  product_type = ProductType.create(
    name: "Service",
    has_quantity: true,
    is_default: true 
  )
  puts "Product type is created"
  
  # create product sample data
  1.times do |i|
    Product.create(
      name: "Product name is App #{i}",
      description: "Description of Product",
      category: "Product Category",
      product_type_id: product_type.id,
      company_id: company.id,
      p_type: "Service"
    )
    puts "Product is created" 
  end 
  
  # create address sample data
  5.times do |j|
    Address.create(
      name: "Backbencher Technologies #{j}",
      ad_line1: "C21#{j}",
      ad_line2: "Vijay Nagar#{j}",
      area: "Malviya Nagar#{j}",
      city: "Indore#{j}",
      country: "India#{j}",
      pin_code: 462010,
      phone: "4759385340",
      addressable_id: company.id,
      addressable_type: company.class.name
      )
      puts "Address no is #{j}"
  end
end 

# create user sample data
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

# create categories sample data
5.times do |e| 
  category = Category.create(
    category_name: "Category #{e}", 
  )

  5.times do |ee| 
    second_category = Category.create(
      category_name: "Category Name #{ee}",
      parent_id: category.id 
    ) 
    
    5.times do |eee| 
      category = Category.create(
        category_name: "Category Name #{eee}",
        parent_id: second_category
      ) 
    
    end
  end
end

puts "Category is created"
1.times do |i|
  Product.create(
    name: "Product name is App #{i}",
    description: "Description of Product",
    category_id: category.id,
    company_id: company.id
  )
  puts "Product is created" 
end 