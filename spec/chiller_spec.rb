require_relative '../lib/chiller'

describe 'A chiller' do

    it "has a capacity that can be set" do
        chiller = Chiller.new(200)
        expect(chiller.capacity).to eq(200)
    end

    it "has a temperature that can be set" do
        chiller = Chiller.new
        chiller.set_level(5)
        expect(chiller.temperature).to eq(45)
    end

   # it "can be turned on" do
   #     chiller = Chiller.new
   #     chiller.turn_on
   #     expect(chiller.power).to eq(:on)
   # end

   # it "can be turned off" do
   #     chiller = Chiller.new
   #     chiller => @power = :on
   #     chiller.turn_off
   #
   #     expect(chiller => @power).to eq(:off)
   # end

    it "can add items" do
        chiller = Chiller.new
        item = Item.new('FAKE', 100)
        chiller.add(item)

        expect(chiller => @contents).to_not be_empty
    end


end
