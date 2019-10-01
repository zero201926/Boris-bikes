require 'bike.rb'

class Garage

  attr_reader :stored

  def initialize
    @stored = []
  end

  def store(van_bikes)
    stored << van_bikes
  end

  def repair
    stored.each { |bike| bike.report_working }
  end

  def release
    stored
  end

end
