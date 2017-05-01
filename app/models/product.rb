class Product < ActiveRecord::Base
	# Products can be sold many times, really sales are orders, use product_id 
	has_many :sales, class_name: :Order, foreign_key: :product_id
  	# Products can have many purchasers, through orders, use user_id
  	has_many :purchasers, through: :sales, source: :purchaser
  	# Has one designer, really called a User, use user_id
  	belongs_to :designer, class_name: :User, foreign_key: :user_id 
  # Remember to create a migration!
end
