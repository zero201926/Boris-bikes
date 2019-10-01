class Bike
  # @broken = false
  # attr_reader :bike_info
  # def initialize(info)
  #   @bike_info = info
  # end
  def working?
    # if @bike_info[:quality] >= 5
    #   return true
    # end
    true
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
end
