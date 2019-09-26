<<<<<<< HEAD
require 'lib/main.rb'
=======
require 'main.rb'
>>>>>>> b16261ca7573a23d39f30be4df1dda8dbf2ca67d

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
