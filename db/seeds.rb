Product.destroy_all

676.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    stock_quantity: Faker::Number.between(from: 1, to: 100)
  )
end

puts "Successfully created #{Product.count} products!"