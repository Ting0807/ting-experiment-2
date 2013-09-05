
class Bike

	attr_accessor :condition
	def initialize(condition)
		@condition=condition
	end

	def is_working?
		if condition == true
			return true
		else 
			return false
		end
	end


end
		# @availability = {
		# 	'0001' => 'available',
		# 	'0002' => 'available',
		# 	'0003' => 'available',
		# 	'0004' => 'available',
		# 	'0005' => 'unavailable',
		# 	'0006' => 'available',
		# 	'0007' => 'unavailable',
		# 	'0008' => 'available',
		# 	'0009' => 'unavailable',
		# 	'0010' => 'available'
		# }
	

	# def list_of_available_bikes
	# 	@availability.select {|key, value| value == 'available'}.keys
	# end