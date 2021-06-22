# frozen_string_literal: true

# Puts Frames and the score
class BowlingGame
    def initialize
      @rolls = []
    end
  
    #def roll(pins)
    #  @rolls << pins
    #end
  
    def score
      @score = 0
      @turno = 0
      roll_index = 0
      10.times do
        if strike?(roll_index)
          @score += strike_score(roll_index).to_i
          roll_index += 1
          puts "STRIKE"
        end
        if spare?(roll_index)
          @score += spare_score(roll_index).to_i
          puts "SPARE"
        else
          @score += frame_score(roll_index).to_i
          roll_index += 2
        end
        @turno += 1
        puts ("Score TIRO #{@turno}: #{@score}")
      end
    end
  
    def strike?(roll_index)
      @rolls[roll_index] = Random.rand(0..10)
      if @rolls[roll_index] == 10
        return true
      else
        return false
      end
    end
  
    def strike_score(roll_index)
      @rolls[roll_index].to_i + @rolls[roll_index + 1].to_i + @rolls[roll_index + 2].to_i
    end
  
    def spare?(roll_index)
      dif = 10 - @rolls[roll_index].to_i
      @rolls[roll_index + 1] = Random.rand(0..dif)
      if @rolls[roll_index].to_i + @rolls[roll_index + 1].to_i == 10
        return true
      else
        return false
      end
    end
  
    def spare_score(roll_index)
      @rolls[roll_index + 2] = Random.rand(0..10)
      @rolls[roll_index] + @rolls[roll_index + 1] +  @rolls[roll_index + 2]
    end
  
    def frame_score(roll_index)
      @rolls[roll_index].to_i + @rolls[roll_index + 1].to_i
    end
  
    def final_score
      @rolls.each do |final_score|
        puts @score, '/'
      end
    end
  end
  
  @game = BowlingGame.new
  @game.score
  #@game.final_score