require 'bike'

describe 'Bike' do
	let(:bike) {Bike.new(true)}
	
	it 'should return a blank instance' do
		bike = Bike.new(true)
	end

	it 'states that it is available when bike is working' do
		expect(bike.is_working?).to be_true
	end

	it 'states that it is unavailable when bike is broken' do
		bike = Bike.new(false)
		expect(bike.is_working?).to be_false
	end

end
		# expect(bike.list_of_available_bikes).to eq(['0001', '0002', '0003', '0004', '0006', '0008', '0010'])
