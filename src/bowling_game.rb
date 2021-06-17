class bowlingGame
    def initialize
        @rolls = []
    end

    def roll_pins
        @rolls.push pins
    end

    def score
        result = 0
        rollIndex = 0
        10.time do
            if spare? rollIndex
                result += @rolls[rollIndex] + @rolls[rollIndex + 1] + @rolls[rollIndex + 2]
            else
                result += @rolls[rollIndex] + @rolls[rollIndex + 1]
            end
                rollIndex +=2
            end
        end
        result
    end

    def spare? rollIndex
        result += @rolls[rollIndex] + @rolls[rollIndex + 1]==10
    end

end