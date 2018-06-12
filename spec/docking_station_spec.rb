require "docking_station"

describe DockingStation do
 it { is_expected.to respond_to :release_bike}
end






=begin
describe DockingStation do
 it 'should respond to the release_bike method' do
	 expect(subject).to respond_to :release_bike
 end
end
=end
