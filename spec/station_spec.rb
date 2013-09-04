require 'station'

describe Station do
	let(:station){Station.new(['bike','bike'],['broken bike','broken bike'],6)}

	it 'releases a bike from the working bike list' do
		expect(station.releases_a_working_bike).to eq 'bike'
	end

	it 'release a bike from the broken list' do
		expect(station.releases_a_broken_bike).to eq 'broken bike'
	end

	it 'checks whether the bike it receives is working' do
		# bike = double(:bike{working?('bike'): :true})
		expect(station.working?('bike')).to be_true
	end
	
	it 'checks whether the bike it receives is broken' do
		# bike = double(:bike{working?('bike'): :true})
		expect(station.working?('broken bike')).to be_false
	end

	it 'places a working bike into the working bike list' do
		expect(station.receive_a_bike('bike').push).to eq(['bike','bike','bike'])
	end

	it 'place a broken bike into the broken bike list' do
		expect(station.receive_a_bike('broken_bike').push).to eq ['broken bike','broken bike', 'broken bike']
	end 

	it 'cannot put broken bike into working bike list' do
		# expect(station.receive_a_bike).to raise_error NameError, "Did not add bike to list"
		expect(station.receive_a_bike('broken_bike')).to_not eq ["bike","bike","bike"]
	end

	it 'cannot put working bike into broke bike list' do
		expect(station.receive_a_bike('bike')).to_not eq ["broken_bike","broken_bike","broken_bike"]
	end

	it 'checks if station is not full' do
		expect(station.station_full?).to_not be_true
	end

	it 'only places working bikes to the working bike list when the station is not full' do
		station = Station.new(['bike','bike'],['broken bike','broken bike'],4)
		expect(station.receive_a_bike('bike')).to be_nil
	end
	it 'only places broken bikes into the broken bike list when station is not full' do
		station = Station.new(['bike','bike'],['broken bike','broken bike'],4)
		expect(station.receive_a_bike('bike')).to be_nil
	end
	# it 'releases a bike' do
	# 	bike = double(:bike,{condition?: true})
	# 	expect(station.release_a_bike(station.bike_list,bike)).to eq 'bike'
	# end

	# it 'allows a rider to rent a bike when bike is available' do
	# 	bike = double(:bike,{condition?: true})
	# 	expect(station.release_a_bike(station.bike_list,bike)).to eq 'bike'
	# end

	# it 'forbids a rider to rent a bike when bike is broken' do
	# 	bike = double(:bike,{condition?: false})
	# 	expect(station.release_a_bike(@bike_list,bike)).to be_nil
	# end


	# it 'forbids rider or van to dock bike when full' do
	# 	station = Station.new(4)
	# 	expect(station.receive_a_bike).to be_nil
	# end

	# it'can receive a bike from rider or van'do
	#    expect(station.receive_a_bike.count).to eq(station.amount_of_bikes + 1)
	# end

	# it 'collect all broken bikes'do
	# end 

	# it 'let van take the broken bikes away' do
	# end

    # it'receive some bikes from van'do
    
    # end 
	# it 'forbids van to dock bike when full' do
	# 	expect
		
	# end
# it 'knows that a rider takes a bike away' do
# 	it 'knows that a rider returns a bike'do
# end
end