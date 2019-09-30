class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  # attr_reader :capacity
  attr_accessor :capacity
  # def bike
  #   @station_bikes
  # end

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    # @capacity = DEFAULT_CAPACITY
    @bikes = []
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
    bikes.pop #= bike
  end

  def docking(bike)
    fail 'docking station is full' if full?
    bikes << bike
    # station_bikes.push(bike.bike_info)
  end

  def full?
    if bikes.count >= capacity
      return true
    else
      return false
    end
  end

  def empty?
    if bikes.empty?
      return true
    else
      return false
    end
  end
end
