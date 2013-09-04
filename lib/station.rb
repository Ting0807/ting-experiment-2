require_relative './bike.rb'

class Station
 attr_reader :bike_list
 attr_reader :station_max
 attr_accessor :amount_of_bikes
 # attr_accessor :working_bike

 # def amount_of_bikes=(value)
 # 	@amount_of_bikes = value
 # end

	def initialize(working_bike_list, broken_bike_list, station_max)
		@working_bike_list=working_bike_list
		@broken_bike_list=broken_bike_list
		@station_max = station_max
	end

	def releases_a_working_bike
		@working_bike_list.pop 
	end

	def releases_a_broken_bike
		@broken_bike_list.pop
	end

	def working?(bike)
		# @bike=bike
		bike=='bike'
	end

	def receive_a_bike(bike)
		if station_full?
			return nil
		elsif working?(bike)
			
			@working_bike_list.push('bike')
		else 
			@broken_bike_list.push('broken bike')
		end
	end

	def station_full?
	@amount_of_bikes=@working_bike_list.count + @broken_bike_list.count
		amount_of_bikes == @station_max
	end
end
   
	# def receive_a_bike
	# 	if station_full?
	# 		return nil
	# 	else
	# 		@broken_bike_list.push('broken bike')
	# 	end
	# end




    # attr_accessor :bike
		# bike=Bike.new
		# if bike.condition?
		# @bike_list.pop 
		# else
		# 	return nil

		# end
		# @working_bike=working_bike