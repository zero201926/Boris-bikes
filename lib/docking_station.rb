class DockingStation
  # @max_capacity = 1
  attr_reader :station_bikes
  # def bike
  #   @station_bikes
  # end

  def initialize
    @station_bikes = []
      # {id: '123', quality: 6}#,
      # {id: '456', quality: 3},
      # {id: '789', quality: 10}
    # ]
  end

  def release_bike
    # Bike.new
    fail 'No bikes available' if @station_bikes.empty?
    # Bike.new
    # bike_removed = station_bikes.pop()
    # bike_removed
    @station_bikes.pop #= bike
  end

  def docking(bike)
    fail 'docking station is full' if @station_bikes.count >= 20
    @station_bikes << bike
    # station_bikes.push(bike.bike_info)
  end


end
