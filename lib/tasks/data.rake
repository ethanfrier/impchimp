require 'csv'
namespace :data do 

	task :import_pizzas => :environment do 
		puts "importing the pizzas"

		CSV.foreach(Rails.root.join('data', 'pizza.csv')) do |row|
			value = {
				:name => row[0],
				:lat  => row[1],
				:lng  => row[2]
			}

			Pizza.create( value )

			puts value.inspect

		end

	end

end 