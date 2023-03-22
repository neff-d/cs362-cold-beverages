require_relative '../lib/item'

describe 'An item of food or a beverage' do

    it "exists" do
        item = Item.new('FAKE', 100)
        expect(item).to be_a(Item)
    end

    it "has a name" do
        item = Item.new('FAKE', 100)
        expect(item.name).to eq('FAKE')
    end

    it "has a volume" do
        item = Item.new('FAKE', 100)
        expect(item.volume).to eq(100)
    end

end
