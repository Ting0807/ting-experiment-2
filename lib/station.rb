require_relative './bike.rb'

class Station
 attr_reader :bike_list
 attr_reader :station_max
 attr_accessor :amount_of_bikes

 # def amount_of_bikes=(value)
 # 	@amount_of_bikes = value
 # end

	def initialize(station_max)
		@station_max = station_max
		@bike_list = ['bike','bike','bike','bike']
		@amount_of_bikes=@bike_list.count
	end

	def release_a_bike(bike_list,bike)
		# bike=Bike.new
		if bike.condition?
		@bike_list.pop 
		else
			return nil

		end
	end

	def receive_a_bike
		if station_full?
			return nil
		else
			@bike_list.push('bike')
		end
	end
	
	def station_full?
	
		amount_of_bikes == @station_max
	end
end
   




    # attr_accessor :bike