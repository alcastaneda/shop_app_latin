class User < ActiveRecord::Base
  # Remember to create a migration!
  # User can have many purchases, really orders in database, use user_id
  has_many :purchases, class_name: :Order, foreign_key: :user_id
  # User can have many designed products, really product, use user_id
  has_many :designed_products, class_name: :Product, foreign_key: :user_id
  # User.sales
  # User can have many sales (sales being products sold) through designed_products
  has_many :sales, through: :designed_products
  # User.customers
  # We want to see who bought their products
  has_many :customers, through: :sales, source: :purchaser

end

