require 'main.rb'

describe DockingStation do
  it 'instances respond to release_bike' do
    # Arrange
    docking_station = DockingStation.new
    # Act
    bike_working = docking_station.release_bike('123')
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
end



# a) gets a bike, and then b) expects the bike to be working
#  Make this test pass
