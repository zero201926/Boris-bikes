require 'garage.rb'
require 'docking_station.rb'
require 'bike.rb'
require 'van.rb'


describe Garage do

  it 'recieve broken bikes from vans' do
    garage = Garage.new
    stored = garage.stored
    van = Van.new
    expect(stored).to eq(van.van)


  end

  it 'releases working bikes' do
    garage = Garage.new
    bike1 = Bike.new
    van = Van.new
    garage.store(bike1)
    garage.repair
    van.collect_working(garage)
    working_bikes = garage.release
    expect(van.van).to eq([working_bikes])

  end

end
