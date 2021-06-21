# frozen_string_literal: true

# def bowling game
class Bowling
    def initialize
        @rolls = []
        @score = 0
    end

    def roll pins
        @rolls << pins
    end

    def score        
        roll_index = 0
        10.times do
        if strike?(roll_index)
            @score += strike_or_spare_score(roll_index)
            roll_index += 1
        elsif spare?(roll_index)
            @score += strike_or_spare_score(roll_index)
            roll_index += 2
        else
            @score += frame_score(roll_index)
            roll_index += 2
        end
        end
        @score
    end

    # def points(roll_index)
    #     @rolls[roll_index] = Random.rand(0..10)
    # end

    def strike?(roll_index)
        # points(roll_index)
        @rolls[roll_index] == 10
    end

    def strike_or_spare_score(roll_index)
        @rolls[roll_index] + @rolls[roll_index + 1] +  @rolls[roll_index + 2]
    end

    def spare?(roll_index)
        # @dif = 10 - @rolls[roll_index]
        # @rolls[roll_index + 1] = Random.rand(0..@dif)
        @rolls[roll_index] + @rolls[roll_index + 1] == 10
    end

    def frame_score(roll_index)
        @rolls[roll_index] + @rolls[roll_index + 1]
    end

    # def final_score
    #     @rolls.each do |_final_score|
    #         puts @score, '/'
    #     end
    # end
end
