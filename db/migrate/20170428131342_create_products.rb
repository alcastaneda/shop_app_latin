class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  		t.references :user
  		t.string :name
  	end
  end
end
