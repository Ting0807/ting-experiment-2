require 'rider'



describe Rider do
	let(:rider){Rider.new(empty_station)}
	let(:empty_station) {double :station, working_bike_list: [], broken_bike_list: [] }
	let(:station_with_bikes) {
		double :station, working_bike_list: [ double(:bike) ], broken_bike_list: [] 
	}

	it 'checks whether the station is empty'do
		# station = double(:station,{working_bike_list: ['bike','bike'],broken_bike_list: ['broken_bike','broken_bike']})
	    # station.working_bike_list=[]
	    # station.broken_bike_list=[]
		expect(rider.empty?(empty_station)).to be_true
	end

	it 'checks whether the station is not empty'do
		# station = double(:station,{working_bike_list: ['bike','bike'],broken_bike_list: ['broken_bike','broken_bike']})
	    # station.working_bike_list=[]
	    # station.broken_bike_list=[]
		expect(rider.empty?(station_with_bikes)).to be_false
	end

# 	it 'can rent a bike'do
# 		station_with_bikes = double(:station_with_bikes,{release_a_working_bike: :bike})
# 		expect(rider.rent_a_bike(station_with_bikes)).to eq (:bike)

# # rider.rent_a_bike(station_with_bikes
# # expect(rider).to have_a_bike	

# 	end

	it 'can rent a bike from a station' do 
		station = double :station
		station.should_receive(:release_a_working_bike)

		rider.rent_a_bike(station)
	end

	it 'has a bike after renting'do
		station = double(:station,{release_a_working_bike: :bike})
		rider.rent_a_bike(station)
		expect(rider).to have_a_bike        
	end

    it'cannot rent a bike if the station is empty'do

	    empty_station = double(:empty_station,{release_a_working_bike: nil})
		expect(rider.rent_a_bike(empty_station)).to eq [nil]
       
    end

    it 'cannot rent from a station with only broken bikes'do
		broken_station= double(:station, {release_a_working_bike: nil})
		rider.rent_a_bike(broken_station)
		expect(rider).not_to have_a_bike
	end

    it 'can drop off a bike' do 

    	station=double(:station, {receive_a_bike: :bike})
    	rider.return_a_bike(station)
	# it 'has a bike after renting'do
	# 	station = double(:station,{release_a_bike: :bike})
	# 	rider.rent_a_bike(station)
	# 	expect(rider).to have_a_bike        
	# end
	end	

    it 'cannot return a bike if the station is full' do
    	station=double(:station, {receive_a_bike: :nil})
    	rider.return_a_bike(station)
    	expect(rider).to have_a_bike
    	
	end


    it 'do not have a bike after returning the bike' do
       	station = double(:station,{receive_a_bike: :bike,release_a_working_bike: 'bike'})
       	@bike = []
       	rider.rent_a_bike(station)
       	rider.return_a_bike(station)
    	expect(rider).not_to have_a_bike
    end
   
    it'can break a bike'do
	    station=tation=double(:station,{release_a_working_bike: 'bike'})
	    expect(rider.break_a_bike(station)).to eq(['broken bike'])
	end
   	



	# it 'allow to drop off a bike to a station' do
	# 	station = double :station
	# 	station.should_receive(:receive_a_bike)
	# 	rider.dock_a_bike(station)
	end



