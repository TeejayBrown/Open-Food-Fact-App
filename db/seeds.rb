require "csv"

Product.delete_all
ManufacturingCountry.delete_all

filename = Rails.root.join("db/products_data.csv")
puts "Loading Products from the csv file: #{filename}"

csv_data = File.read(filename)

productsData = CSV.parse(csv_data, headers: true, encoding: "utf-8")

productsData.each do |p|

  manufacturing_country = ManufacturingCountry.find_or_create_by(name: p['countries_en'])

  if manufacturing_country && manufacturing_country.valid?
    #create the products
    product = manufacturing_country.products.create(
      product_name: p['product_name'],
      url: p['url'],
      brand: p['brands'],
      bar_code: p['code'],
      thumbnail: p['image_small_url'],
      image: p['image_url']
    )
    puts "Invalid Product #{p['product_name']}" unless product&.valid?
  else
    puts "Invalid manufacturing country #{p['countries_en']} for product #{p['product_name']}"
  end


  #puts p['product_name']

end

puts "Created #{ManufacturingCountry.count} Manufacturing Countries"
puts "Created #{Product.count} products"
