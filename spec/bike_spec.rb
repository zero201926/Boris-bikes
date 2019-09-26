require 'main.rb'

describe Bike do
  it 'working bike' do
    # Arrange
    bike = Bike.new({id: '987', quality: 5})
    # Act
    work = bike.working?
    # Assert
    expect(work).to eq(true)
  end
end
