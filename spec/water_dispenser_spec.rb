require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

    it "has a water reservoir" do
        reservoir = WaterReservoir.new
        dispenser = WaterDispenser.new(reservoir)
        expect(dispenser.reservoir).to be_a(WaterReservoir)
    end

    it "dispenses water" do
        reservoir = WaterReservoir.new
        dispenser = WaterDispenser.new(reservoir)
        vessel = Vessel.new('FAKE', 100)

        reservoir.fill
        dispenser.dispense(vessel)
        expect(reservoir.current_water_volume).to_not eq(reservoir.capacity)
    end

end
