require_relative './station'


class Rider
attr_accessor :bike
	def initialize(station)
		station = Station.new(['bike','bike'],['broken_bike','broken_bike'],6)
		@bike = []
	end


	def rent_a_bike(station)
		@bike << station.release_a_working_bike
	end

	def return_a_bike(station)
		station.receive_a_bike
		@bike.pop
		
	end

	def has_a_bike?
       @bike != [nil]
    end

    def empty?(station)
	  	station.working_bike_list.count + station.broken_bike_list.count==0
    end

    def break_a_bike(station)
    	rent_a_bike(station)
    	@bike.pop
    	@bike.push('broken bike')

	end
end

