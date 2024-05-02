# frozen_string_literal: true

require_relative "Farkle/version"
require "ruby2d"

set( { :title => "Farkle!" } )
set( { :background => "navy" } )
# You can also write this:
# set :title 'Farkle!', background: 'navy'

rollButton = Rectangle.new( x: 225, y: 180, width: 200, height: 100, color: 'red' )
text = Text.new( 'Roll', x: 250, y: 200, size: 75, color: 'white' )
@slots = []


class Dice
  def dieOne
    @die1 = Sprite.new('Sprites/dieWhite1.png')
  end

  def dieTwo
    @die2 = Sprite.new('Sprites/dieWhite2.png')
  end

  def dieThree
    @die3 = Sprite.new('Sprites/dieWhite3.png')
  end

  def dieFour
    @die4 = Sprite.new('Sprites/dieWhite4.png')
  end

  def dieFive
    @die5 = Sprite.new('Sprites/dieWhite5.png')
  end

  def dieSix
    @die6 = Sprite.new('Sprites/dieWhite6.png')
  end
end

class RollDice


  def roll
    @roll = [1, 2, 3, 4, 5, 6]
    @die = @roll.sample
    puts "You rolled a #{@die}"
    if @die == 1
      then @die = Dice.new.dieOne
    elsif @die == 2
      then @die = Dice.new.dieTwo
    elsif @die == 3
      then @die = Dice.new.dieThree
    elsif @die == 4
      then @die = Dice.new.dieFour
    elsif @die == 5
      then @die = Dice.new.dieFive
    elsif @die == 6
      then @die = Dice.new.dieSix
    end
  end
end


=begin
TODO: Get the dice to save the object to a variable
=end

class DiceSlots

  def dieSlotOne  
    @slot_one = RollDice.new.roll
    @slot_one.x = 100
    @slot_one.y = 100
  end

  def dieSlotTwo
    @slot_two = RollDice.new.roll
    @slot_two.x = 300
    @slot_two.y = 100
  end

  def dieSlotThree
    @slot_three = RollDice.new.roll
    @slot_three.x = 500
    @slot_three.y = 100
  end

  def dieSlotFour
    @slot_four = RollDice.new.roll
    @slot_four.x = 100
    @slot_four.y = 300
  end

  def dieSlotFive
    @slot_five = RollDice.new.roll
    @slot_five.x = 300
    @slot_five.y = 300
  end

  def dieSlotSix
    @slot_six = RollDice.new.roll
    @slot_six.x = 500
    @slot_six.y = 300
  end
end

@slot_one = DiceSlots.new.dieSlotOne
@slot_two = DiceSlots.new.dieSlotTwo
@slot_three = DiceSlots.new.dieSlotThree
@slot_four = DiceSlots.new.dieSlotFour
@slot_five = DiceSlots.new.dieSlotFive
@slot_six = DiceSlots.new.dieSlotSix

#RollDice.new.roll

on :mouse_down do |event|
  puts event.x, event.y
  
  # TODO: On the if statements hold the object that is clicked on so when that dice does not roll with the rest

  
  if event.x > 100 && event.x < 200 && event.y > 100 && event.y < 200
    DiceSlots.new.dieSlotOne

          
  elsif event.x > 300 && event.x < 400 && event.y > 100 && event.y < 200
    DiceSlots.new.dieSlotTwo
  
  elsif event.x > 500 && event.x < 600 && event.y > 100 && event.y < 200
    DiceSlots.new.dieSlotThree
  
  elsif event.x > 100 && event.x < 200 && event.y > 300 && event.y < 400
    DiceSlots.new.dieSlotFour
  
  elsif event.x > 300 && event.x < 400 && event.y > 300 && event.y < 400
    DiceSlots.new.dieSlotFive
  
  elsif event.x > 500 && event.x < 600 && event.y > 300 && event.y < 400
    DiceSlots.new.dieSlotSix
  end
  
  if event.x > 225 && event.x < 425 && event.y > 180 && event.y < 280
    DiceSlots.new.dieSlotOne
    DiceSlots.new.dieSlotTwo
    DiceSlots.new.dieSlotThree
    DiceSlots.new.dieSlotFour
    DiceSlots.new.dieSlotFive
    DiceSlots.new.dieSlotSix
  end
end

show
