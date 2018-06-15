require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to(:release_bike)}


  #it "releases a working bike" do
    #bike = subject.release_bike
#expect(bike).to be_working
  #end

  it { is_expected.to respond_to(:dock).with(1).argument}

  it { is_expected.to respond_to(:bike) }


  describe '#dock' do

    it "docks something" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it 'raises an error when there is already a bike in the doc' do
      bike = Bike.new
      subject.dock(bike)
      expect{subject.dock(bike)}.to raise_error 'No spaces available'
    end

  end

 describe '#release_bike' do
   it 'releases a bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.release_bike).to eq bike
  end

  it 'raises an error when there are no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end
end






=begin
describe DockingStation do
 it 'should respond to the release_bike method' do
	 expect(subject).to respond_to :release_bike
 end
end
=end
