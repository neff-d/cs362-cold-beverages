require_relative '../lib/refrigerator'

describe 'A refrigerator' do

    it "can add items to its chiller" do
        chiller = Chiller.new
        freezer = Freezer.new
        water_reservoir = WaterReservoir.new
        water_dispenser = WaterDispenser.new(water_reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir)
        item = Item.new('FAKE', 100)

        refrigerator.chill(item)
        expect(chiller => @contents).to_not be_empty
    end

    it "can add items to its freezer" do
        chiller = Chiller.new
        freezer = Freezer.new
        water_reservoir = WaterReservoir.new
        water_dispenser = WaterDispenser.new(water_reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir)
        item = Item.new('FAKE', 100)

        refrigerator.freeze(item)
        expect(freezer => @contents).to_not be_empty
    end

    it "has a total capacity that is its chiller plus its freezer" do
        chiller = Chiller.new(50)
        freezer = Freezer.new(50)
        water_reservoir = WaterReservoir.new
        water_dispenser = WaterDispenser.new(water_reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir)

        expect(refrigerator.total_capacity).to eq(100)
    end

    it "sets its chiller level" do
        chiller = Chiller.new
        freezer = Freezer.new
        water_reservoir = WaterReservoir.new
        water_dispenser = WaterDispenser.new(water_reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir)

        refrigerator.set_chiller_level(5)
        expect(refrigerator.chiller.temperature).to eq(45)
    end

    it "sets its freezer level" do
        chiller = Chiller.new
        freezer = Freezer.new
        water_reservoir = WaterReservoir.new
        water_dispenser = WaterDispenser.new(water_reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir)

        refrigerator.set_freezer_level(5)
        expect(refrigerator.freezer.temperature).to eq(20)
    end

end
