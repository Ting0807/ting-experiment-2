require_relative './bike.rb'

class Station
 # attr_reader :bike_list
 # attr_reader :station_max
 # attr_accessor :amount_of_bikes
 # attr_accessor :working_bike
attr_accessor :working_bike_list
attr_accessor :broken_bike_list
 # def amount_of_bikes=(value)
 # 	@amount_of_bikes = value
 # end

	def initialize(number_of_working_bikes, number_of_broken_bikes,station_max)
		@station_max = station_max
		@bike = Bike.new(true)
		@working_bike_list = [] 
		@number_of_working_bikes=number_of_working_bikes
     @working_bike_list=adding_bike_to_list(@working_bike_list, @bike, @number_of_working_bikes)
		@broken_bike = Bike.new(false)
		@broken_bike_list = []
		@number_of_broken_bikes=number_of_broken_bikes
		@broken_bike_list=adding_bike_to_list(@broken_bike_list, @broken_bike, @number_of_broken_bikes)
	end


	def adding_bike_to_list(bike_list,bike,number_of_bike)
		n = 0
		while n < number_of_bike
			bike_list.push(bike)
			n += 1
		end 
	end
# @bike_list=bike_list
# @bike=bike
# @number_of_bike=number_of_bike

	def releases_a_working_bike
		@working_bike_list.pop 
	end

	def releases_a_broken_bike
		@broken_bike_list.pop
	end

	def working?
		@bike.is_working?
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
		@amount_of_bikes == @station_max
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