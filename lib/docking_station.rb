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
    fail 'bike is broken' if @broken == true
    # Bike.new
    # bike_removed = station_bikes.pop()
    # bike_removed
    bikes.pop #= bike
  end

  def docking(bike)
    fail 'docking station is full' if full?
    # bike
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
    # puts bikes
    if bikes.empty?
      return true
    else
      return false
    end
  end

  def broken_bikes_to_be_fixed
    @broken_bikes = []
    bikes.collect! { |bike| @broken_bikes << bike if bike.broken? }
    @broken_bikes
  end

end
