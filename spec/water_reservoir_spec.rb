require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

    it "has a default capacity of 10" do
        reservoir = WaterReservoir.new
        expect(reservoir.capacity).to eq(10)
    end

    it "has a capacity that can be set" do
        reservoir = WaterReservoir.new(20)
        expect(reservoir.capacity).to eq(20)
    end

    it "has an default volume of 0" do
        reservoir = WaterReservoir.new
        expect(reservoir.current_water_volume).to eq(0)
    end

    it "has a volume that can be set" do
        reservoir = WaterReservoir.new(20, 10)
        expect(reservoir.current_water_volume).to eq(10)
    end

    it "is initially empty" do
        reservoir = WaterReservoir.new
        expect(reservoir).to be_empty
    end

  #  it "is not empty after being filled" do
  #      reservoir = WaterReservoir.new
  #      reservoir.fill
  #      expect(reservoir).to_not be_empty
  #  end

    it "loses volume when drained" do
        reservoir = WaterReservoir.new(10, 10)
        reservoir.drain(3)
        expect(reservoir.current_water_volume).to eq(7)
    end

end
