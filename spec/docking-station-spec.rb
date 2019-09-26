require 'main.rb'

describe DockingStation do
  it 'instances respond to release_bike' do
    # Arrange
    customer = DockingStation.new
    # Act
    bike = customer.release_bike('123')
    # Assert
    expect(customer).respond_to?(bike)
  end
end
