require_relative 'apples'

RSpec.describe AppleTree do
    before(:each) do
        @tree1 = AppleTree.new(1)
        @tree1.age = 4
    end
    it 'has a getter and setter for age attribute' do
        @tree1.age = 7
        expect(@tree1.age).to eq(7)
    end
    it 'has a getter for height attribute' do
        expect{@tree1.height = 20}.to raise_error(NoMethodError)
        expect(@tree1.height).to eq(6)
    end
    it 'has a getter for apple_count attribute' do
        expect{@tree1.apple_count = 20}.to raise_error(NoMethodError)
        expect(@tree1.apple_count).to eq(2)
    end
    it 'has a method pick_apples to reset apple_count' do
        @tree1.pick_apples
        expect(@tree1.apple_count).to eq(0)
    end
    context "age is less than 4" do 
        before(:each) do
            @tree2 = AppleTree.new(1)
        end
        it 'has a method year_gone_by to simulate a years passing which increases height, age, and apple_count depending on its age' do
            @tree2.year_gone_by
            expect(@tree2.age).to eq(2)
            expect(@tree2.height).to eq(3)
            expect(@tree2.apple_count).to eq(0)
        end
    end
    context "age is between 4 and 9" do 
        before(:each) do
            @tree3 = AppleTree.new(6)
        end
        it 'has a method year_gone_by to simulate a years passing which increases height, age, and apple_count depending on its age' do
            @tree3.year_gone_by
            expect(@tree3.age).to eq(7)
            expect(@tree3.height).to eq(10.5)
            expect(@tree3.apple_count).to eq(8)
        end
    end
    context "age is greater than 9" do 
        before(:each) do
            @tree4 = AppleTree.new(11)
        end
        it 'has a method year_gone_by to simulate a years passing which increases height, age, and apple_count depending on its age' do
            @tree4.year_gone_by
            expect(@tree4.age).to eq(12)
            expect(@tree4.height).to eq(18)
            expect(@tree4.apple_count).to eq(0)
        end
    end
end