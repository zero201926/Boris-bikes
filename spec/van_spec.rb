require 'garage.rb'
require 'docking_station.rb'
require 'bike.rb'
require 'van.rb'

describe Van do

  # let(:docking_station) {double :docking_station, broken_bikes_to_be_fixed: @broken_bikes, docking: @bikes}
  # let (:bike) { double :bike, report_broken: false  }

  it 'collect all broken bikes from docking stations' do
    bike1 = Bike.new
    bike2 = Bike.new
    docking_station = DockingStation.new
    bike1.report_broken
    # puts bike1
    docking_station.docking bike1
    docking_station.docking bike2
    subject.collect_broken(docking_station)
    expect(subject.van).to eq([[bike1]])
  end

  it 'delivers them to garages' do
    garage = Garage.new
    stored = garage.stored

    expect(stored).to eq(subject.van)

  end

  it 'can collect working bikes from garages' do
    garage = Garage.new
    bike1 = Bike.new
    garage.store(bike1)
    garage.repair
    subject.collect_working(garage)
    working_bikes = garage.release
    expect(subject.van).to eq([working_bikes])

  end

  it 'can distribute them to dockingstaions' do
    bike = Bike.new
    garage = Garage.new
    docking_station = DockingStation.new
    garage.store(bike)
    subject.collect_working(garage)
    subject.distribute(docking_station)
    expect(docking_station.bikes).to eq(subject.van)

  end

end
