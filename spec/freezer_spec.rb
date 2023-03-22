require_relative '../lib/freezer'

describe 'A freezer' do

    it "has a default capacity of 100" do
        freezer = Freezer.new
        expect(freezer.capacity).to eq(100)
    end

    it "has a capacity that can be specified" do
        freezer = Freezer.new(200)
        expect(freezer.capacity).to eq(200)
    end

    it "has its temperature set to ROOM_TEMPERATURE by default" do
        freezer = Freezer.new
        expect(freezer.temperature).to eq(70)
    end

    it "has a temperature that can be set" do
        freezer = Freezer.new
        freezer.set_level(5)
        expect(freezer.temperature).to eq(20)
    end

end
