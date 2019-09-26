require 'main.rb'

describe DockingStation do
  xit 'instances respond to release_bike' do
    # Arrange
    docking_station = DockingStation.new
    # Act
    bike_working = docking_station.release_bike({id: '123', quality: 6})
    # Assert
    expect(bike_working).to eq(true)
  end

  # xit 'bike value is returned' do
  #   # Arrange
  #   docking_station = DockingStation.new
  #   # Act
  #   bike = docking_station.release_bike('123')
  #   # Assert
  #   expect(docking_station).to eq(bike)
  # end

  xit 'bike docks at docking station' do
    docking_station = DockingStation.new
    bike_info = Bike.new({id: '987', quality: 5})
    docking_station.docking(bike_info)
    expect(docking_station.station_bikes).to include(bike_info)

  end

  it 'removing a bike from docking station' do
    docking_station = DockingStation.new
    docking_station.release_bike()
    expect(docking_station.station_bikes).to raise_error("No bikes avaliable")

  end
end



# a) gets a bike, and then b) expects the bike to be working
#  Make this test pass
