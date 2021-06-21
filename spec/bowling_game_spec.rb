require_relative '../src/bowling_game'

describe 'Bowling Game Behavior' do
    
    before do
        @game = Bowling.new
    end

    it "create the rotations in the game" do        
        20.times{@game.roll 0}
        expect(@game.score).to eql 0
    end

    it "can do all in one score" do 
        20.times{@game.roll 1}
        expect(@game.score).to eql 20
    end

    it "can do a spare" do
        @game.roll(5)
        @game.roll(5)
        @game.roll(3)
        17.times{@game.roll 0}
        expect(@game.score).to eql 16
    end

    it "can do a strike" do
        @game.roll(10)
        @game.roll(3)
        @game.roll(4)
        16.times{@game.roll 0}
        expect(@game.score).to eql 24
    end

    it "can do a perfect game" do
        12.times{@game.roll(10)}
        expect(@game.score).to eql 300
    end
end