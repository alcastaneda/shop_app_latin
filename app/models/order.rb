class Order < ActiveRecord::Base
	belongs_to :purchaser, class_name: :User, foreign_key: :user_id
	belongs_to :product
  # Remember to create a migration!
end
