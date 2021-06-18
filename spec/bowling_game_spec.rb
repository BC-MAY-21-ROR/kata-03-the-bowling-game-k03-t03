require_relative '../src/bowling_game'

RSpec.describe BowlingGame do
    it "exists" do        
        expect(BowlingGame).to be_a Class
    end

    before do
        @game = BowlingGame.new
    end

    it "create the rotations in the game" do        
        20.times{@game.roll 0}
        expect(@game.score).to eql 0
    end

    it "can do a strike" do 
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
end