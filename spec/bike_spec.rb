require 'bike.rb'

describe Bike do
  it 'working bike' do
    # Arrange
    # id = rand(999)
    # quality = rand(10)
    # bike = Bike.new({id: id, quality: quality})
    # # Act
    # work = bike.working?
    # # Assert
    # expect(work).to eq(true)
    expect(subject).to respond_to :working?
  end
  it 'Can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
