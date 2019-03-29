class CreateUser < ActiveRecord::Migration[4.2]

	def change 
		create_table :users do |x|
		x.string :username
		x.string :password
		x.decimal :balance
		end
	end

end