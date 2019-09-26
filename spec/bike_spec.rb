require 'main.rb'

describe Bike do
  it 'working bike' do
    # Arrange
    bike = Bike.new
    # Act
    work = bike.working?("123")
    # Assert
    expect(bike).respond_to?(work)
  end
end
