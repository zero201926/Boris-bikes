class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :station_bikes
  attr_reader :capacity
  # def bike
  #   @station_bikes
  # end

  def initialize
    @capacity = DEFAULT_CAPACITY
    @station_bikes = []
      # {id: '123', quality: 6}#,
      # {id: '456', quality: 3},
      # {id: '789', quality: 10}
    # ]
  end

  def release_bike
    # Bike.new
    fail 'No bikes available' if empty?
    # Bike.new
    # bike_removed = station_bikes.pop()
    # bike_removed
    @station_bikes.pop #= bike
  end

  def docking(bike)
    fail 'docking station is full' if full?
    @station_bikes << bike
    # station_bikes.push(bike.bike_info)
  end

  def full?
    if @station_bikes.count >= DEFAULT_CAPACITY
      return true
    else
      return false
    end
  end

  def empty?
    if @station_bikes.empty?
      return true
    else
      return false
    end
  end
end
