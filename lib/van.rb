require 'docking_station.rb'
require 'garage.rb'

class Van

  attr_reader :van

  def initialize
    @van = []
  end

  def collect_broken(docking_station)
    van << docking_station.broken_bikes_to_be_fixed
  end

  def deliver
    van.each { |bike| @@stored << bike }

  end

  def collect_working(garage)
    van << garage.release
  end

  def distribute(docking_station)
    bikes = docking_station.bikes
    van.each { |bike| bikes << bike }
  end

end
