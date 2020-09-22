require_relative "order"
require_relative "shipment"
require_relative "merchant"
require_relative "product"

# Demonstrate One to One relationships using Order and Shipment
puts "**********************************"
puts "ONE TO ONE RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Order with ID 1207
# Make an instance of Order with ID 1392
# Make an instance of Shipment with a tracking no. of 34668
# Make an instance of Shipment with a tracking no. of 66243

simons_order = Order.new(1207)
beccas_order = Order.new(1392)
shipment_a = Shipment.new(34668)
shipment_b = Shipment.new(66243)


# Read the @shipment attribute of order 1207
puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"

puts "The current shipment on Simon's order is #{simons_order.shipment}"

# Set the attribute of @shipment in order 1207 to shipment 334668

simons_order.shipment = shipment_a

# Read the shipment attribute of order 1207 again
puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"

puts "The current shipment on Simon's order after setting an instance of shipment on Simon's order is #{simons_order.shipment}"


# Demonstrate One to Many relationships using Merchant and Product
puts "\n\n\n**********************************"
puts "ONE TO MANY RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Merchant with name "Hamled"
# Make an instance of Merchant with name "tildeee"
# Make an instance of Product with name "Sandals"
# Make an instance of Product with name "Fish Oil"
# Make an instance of Product with name "Bath Salts"
# Make an instance of Product with name "Almond Flour"

hamled = Merchant.new('Hamled')
tildeee = Merchant.new('Tildeee')
sandals = Product.new('Sandals')
fish_oil = Product.new('Fish Oil')
bath_salts = Product.new('Bath Salts')
almond_flour = Product.new('Almond Flour')

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @product on the Merchant instance and get an empty array (which prints as empty string)"

puts "The current value of Hamled's products is an empty array: #{hamled.products}"

# Shovel the products "sandals" and "fish oil" into Hamled's @products array

hamled.products << sandals
hamled.products << fish_oil

# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"

puts "The current value of Hamled's products is this array: #{hamled.products}"

# What is the data type of Hamled's @products attribute?
#   Array
# How do we read the names of every product that Hamled has?

hamled.products.each do |product|
  puts product.name
end

# Optional: Can we refactor that?
