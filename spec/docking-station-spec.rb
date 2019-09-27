require 'main.rb'

describe DockingStation do
  xit 'release a bike' do
    bike = Bike.new
    subject.docking(bike)
    # bike = subject.release_bike
    expect(subject.release_bike).to eq bike
  end

  describe '#release_bike' do
    it 'raise: removing a bike from empty docking station' do
      # docking_station = DockingStation.new
      # docking_station.release_bike
      expect(subject.release_bike).to raise_error('No bikes avaliable')
    end

  it { is_expected.to respond_to(:release_bike)}
# same as above^^^^^^^^^^^^^^^^^^^^^^^^^
  # xit 'responds to release_bike' do
  #   # # Arrange
  #   # docking_station = DockingStation.new
  #   # # Act
  #   # bike_working = docking_station.release_bike({id: '123', quality: 6})
  #   # # Assert
  #   # expect(bike_working).to eq(true)
  #   expect(subject).to respond_to :release_bike
  # end


end


  describe '#docking:' do
    it 'raise: full docking station' do
      # docking_station = DockingStation.new
      # docking_station.docking
      20.times ( subject.dock Bike.new)
      subject.docking(Bike.new)
      expect(subject.docking Bike.new).to raise_error("docking station is full")
    end

    xit 'bike docks at docking station' do
      # docking_station = DockingStation.new
      bike = Bike.new#({id: '987', quality: 5})
      expect(subject.docking(bike)).to eq(bike)
    end

    it { is_expected.to respond_to(:docking).with(1).argument}

    xit 'bike is returned to docking station' do
      # Arrange
      # docking_station = DockingStation.new
      # Act
      bike = Bike.new
      subject.docking(bike)
      # Assert
      expect(subject.bike).to eq(bike)
    end
  end

end

# a) gets a bike, and then b) expects the bike to be working
#  Make this test pass
