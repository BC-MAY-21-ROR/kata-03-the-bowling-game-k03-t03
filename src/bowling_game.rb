class BowlingGame
    
    def initialize
        @rolls = []
    end

    def roll pins
        @rolls.push pins
    end

    def score
        score = 0
        rollIndex = 0
        20.times do
            score += @rolls[rollIndex]
            rollIndex +=1
        end
        return score
    end
    # def score
    #     result = 0
    #     rollIndex = 0
    #     10.times do
    #         if spare? rollIndex
    #             result += @rolls[rollIndex] + @rolls[rollIndex + 1] + @rolls[rollIndex + 2]
    #         else
    #             result += @rolls[rollIndex] + @rolls[rollIndex + 1]
    #         end
    #             rollIndex +=2            
    #     end
    #     result
    # end

    # def spare? rollIndex
    #     result += @rolls[rollIndex] + @rolls[rollIndex + 1]==10
    # end

end