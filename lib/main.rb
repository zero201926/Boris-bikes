class DockingStation
  attr_reader :station_bikes
  def initialize
    @station_bikes = [
      {id: '123', quality: 6},
      {id: '456', quality: 3},
      {id: '789', quality: 10}
    ]
  end

  def release_bike()
    begin
      # bike = Bike.new(info)
      bike_removed = station_bikes.pop()
      bike_removed
    rescue
      return "No bikes avaliable"
    end
  end

  def docking(info)
    station_bikes.push(info.bike_info)
  end

end

class Bike
  attr_reader :bike_info
  def initialize(info)
    @bike_info = info
  end

  def working?
    if @bike_info[:quality] >= 5
      return true
    end
  end
end
