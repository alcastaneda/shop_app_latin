users = ["Adriana", "Ashley", "Channing", "Harry", "Ron", "Hermoine"]
products = ["Shirt", "Purse", "Shoe", "Lotion", "MacBook", "Table cloth"]

users.each{|user| User.create(name: user)}

20.times do
	Product.create(user_id:rand(1..6), name: products.sample )
	Order.create(user_id: rand(1..6), product_id: rand(1..20))
end