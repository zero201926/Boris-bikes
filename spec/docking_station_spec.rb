require 'docking_station.rb'

describe DockingStation do
  let (:bike) { double :bike, report_broken: false  }
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike)}


    it 'does not allow release of broken bike' do
      # subject.release_bike
      # expect(@broken).to eq(:false)
      docking_station = DockingStation.new
      # bike = Bike.new
      docking_station.docking double(:bike)
      # allow(bike).to receive(:report_broken).and_return(true)
      bike.report_broken
      expect{subject.release_bike}.to raise_error{"bike is broken"}
    end


    it 'release a bike' do
      # bike = Bike.new
      subject.docking bike
      # bike = subject.release_bike
      expect(subject.release_bike).to eq bike
    end
    it 'raise: removing a bike from empty docking station' do
      # docking_station = DockingStation.new
      # docking_station.release_bike
      # subject.release_bike
      expect{subject.release_bike}.to raise_error{"No bikes avaliable"}
    end
  end
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
  describe '#docking:' do
    it { is_expected.to respond_to(:docking).with(1).argument}
    # it 'allows return of broken bike'
    # end
    it 'bike docks at docking station' do
      # docking_station = DockingStation.new
      # bike = Bike.new#({id: '987', quality: 5})
      expect(subject.docking bike).to eq [bike]
    end
    it 'raise: full docking station' do
      # docking_station = DockingStation.new
      # docking_station.docking
      subject.capacity.times { subject.docking bike }
      # subject.docking(Bike.new)
      expect {subject.docking bike}.to raise_error("docking station is full")
    end

    it 'bike is returned to docking station' do
      # bike = Bike.new
      docking_station = DockingStation.new
      docking_station.docking bike
      docking_station.release_bike
      # allow(bike).to receive(:report_broken).and_return(true)
      bike.report_broken
      expect(docking_station.docking bike).to include bike
    end
  end

  describe 'initialize' do
    it 'sets a default capcity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    it 'capacity should be variable' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.docking bike}
      expect {docking_station.docking bike}.to raise_error("docking station is full")
    end
#       describe 'initialization' do
#   subject { DockingStation.new }
#   let(:bike) { Bike.new }
#   it 'defaults capacity' do
#     described_class::DEFAULT_CAPACITY.times do
#       subject.dock(bike)
#     end
#     expect{ subject.dock(bike) }.to raise_error 'Docking station full'
#   end
# end
  end
end
