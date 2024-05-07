# frozen_string_literal: true

require_relative "Farkle/version"
require "ruby2d"

set( { :title => "Farkle!" } )
set( { :background => "navy" } )
# You can also write this:
# set :title 'Farkle!', background: 'navy'

=begin
TODO: Get the dice to save the object to a variable
if that doesnt work create a new sprite image to overlay the old sprite image
=end


rollButton = Rectangle.new( x: 225, y: 180, width: 200, height: 100, color: 'red' )
text = Text.new( 'Roll', x: 250, y: 200, size: 75, color: 'white' )
@diceList = []

# Create all the dice for the slots within lists 

@diceSlotOne = [
  Sprite.new('Sprites/dieWhite1.png', x: 100, y: 100),
  Sprite.new('Sprites/dieWhite2.png', x: 100, y: 100),
  Sprite.new('Sprites/dieWhite3.png', x: 100, y: 100),
  Sprite.new('Sprites/dieWhite4.png', x: 100, y: 100),
  Sprite.new('Sprites/dieWhite5.png', x: 100, y: 100),
  Sprite.new('Sprites/dieWhite6.png', x: 100, y: 100)
]

@diceSlotTwo = [
  Sprite.new('Sprites/dieWhite1.png', x: 300, y: 100),
  Sprite.new('Sprites/dieWhite2.png', x: 300, y: 100),
  Sprite.new('Sprites/dieWhite3.png', x: 300, y: 100),
  Sprite.new('Sprites/dieWhite4.png', x: 300, y: 100),
  Sprite.new('Sprites/dieWhite5.png', x: 300, y: 100),
  Sprite.new('Sprites/dieWhite6.png', x: 300, y: 100)
]

@diceSlotThree = [
  Sprite.new('Sprites/dieWhite1.png', x: 500, y: 100),
  Sprite.new('Sprites/dieWhite2.png', x: 500, y: 100),
  Sprite.new('Sprites/dieWhite3.png', x: 500, y: 100),
  Sprite.new('Sprites/dieWhite4.png', x: 500, y: 100),
  Sprite.new('Sprites/dieWhite5.png', x: 500, y: 100),
  Sprite.new('Sprites/dieWhite6.png', x: 500, y: 100)
]

@diceSlotFour = [
  Sprite.new('Sprites/dieWhite1.png', x: 100, y: 300),
  Sprite.new('Sprites/dieWhite2.png', x: 100, y: 300),
  Sprite.new('Sprites/dieWhite3.png', x: 100, y: 300),
  Sprite.new('Sprites/dieWhite4.png', x: 100, y: 300),
  Sprite.new('Sprites/dieWhite5.png', x: 100, y: 300),
  Sprite.new('Sprites/dieWhite6.png', x: 100, y: 300)
]

@diceSlotFive = [
  Sprite.new('Sprites/dieWhite1.png', x: 300, y: 300),
  Sprite.new('Sprites/dieWhite2.png', x: 300, y: 300),
  Sprite.new('Sprites/dieWhite3.png', x: 300, y: 300),
  Sprite.new('Sprites/dieWhite4.png', x: 300, y: 300),
  Sprite.new('Sprites/dieWhite5.png', x: 300, y: 300),
  Sprite.new('Sprites/dieWhite6.png', x: 300, y: 300)
]

@diceSlotSix = [
  Sprite.new('Sprites/dieWhite1.png', x: 500, y: 300),
  Sprite.new('Sprites/dieWhite2.png', x: 500, y: 300),
  Sprite.new('Sprites/dieWhite3.png', x: 500, y: 300),
  Sprite.new('Sprites/dieWhite4.png', x: 500, y: 300),
  Sprite.new('Sprites/dieWhite5.png', x: 500, y: 300),
  Sprite.new('Sprites/dieWhite6.png', x: 500, y: 300)
]

  def clearDiceSlots
    @diceSlotOne.each do |die|
      die.remove
    end
    @diceSlotTwo.each do |die|
      die.remove
    end
    @diceSlotThree.each do |die|
      die.remove
    end
    @diceSlotFour.each do |die|
      die.remove
    end
    @diceSlotFive.each do |die|
      die.remove
    end
    @diceSlotSix.each do |die|
      die.remove
  end
end


def roll
    @roll = [*1..6].sample
    puts "You rolled a #{@roll}"
  end

  #TODO: if the dice eqaul the same value then show both of them on the screen

def dieSlotOne
    roll
    case @roll
    when 1 then @slotOne = @diceSlotOne[0]
    when 2 then @slotOne = @diceSlotOne[1]
    when 3 then @slotOne = @diceSlotOne[2]
    when 4 then @slotOne = @diceSlotOne[3]
    when 5 then @slotOne = @diceSlotOne[4]
    when 6 then @slotOne = @diceSlotOne[5]
  end
  if @diceList.include?(@slotOne)
  @diceList << @slotOne
end


def dieSlotTwo
    roll
    case @roll
    when 1 then @slotTwo = @diceSlotTwo[0]
    when 2 then @slotTwo = @diceSlotTwo[1]
    when 3 then @slotTwo = @diceSlotTwo[2]
    when 4 then @slotTwo = @diceSlotTwo[3]
    when 5 then @slotTwo = @diceSlotTwo[4]
    when 6 then @slotTwo = @diceSlotTwo[5]
  end
  @diceList << @slotTwo
end

def dieSlotThree
    roll
    case @roll
    when 1 then @slotThree = @diceSlotThree[0]
    when 2 then @slotThree = @diceSlotThree[1]
    when 3 then @slotThree = @diceSlotThree[2]
    when 4 then @slotThree = @diceSlotThree[3]
    when 5 then @slotThree = @diceSlotThree[4]
    when 6 then @slotThree = @diceSlotThree[5]
  end
  @diceList << @slotThree
end

def dieSlotFour
    roll
    case @roll
    when 1 then @slotFour = @diceSlotFour[0]
    when 2 then @slotFour = @diceSlotFour[1]
    when 3 then @slotFour = @diceSlotFour[2]
    when 4 then @slotFour = @diceSlotFour[3]
    when 5 then @slotFour = @diceSlotFour[4]
    when 6 then @slotFour = @diceSlotFour[5]
  end
  @diceList << @slotFour
end

def dieSlotFive
    roll
    case @roll
    when 1 then @slotFive = @diceSlotFive[0]
    when 2 then @slotFive = @diceSlotFive[1]
    when 3 then @slotFive = @diceSlotFive[2]
    when 4 then @slotFive = @diceSlotFive[3]
    when 5 then @slotFive = @diceSlotFive[4]
    when 6 then @slotFive = @diceSlotFive[5]
  end
  @diceList << @slotFive
end

def dieSlotSix
    roll
    case @roll
    when 1 then @slotSix = @diceSlotSix[0]
    when 2 then @slotSix = @diceSlotSix[1]
    when 3 then @slotSix = @diceSlotSix[2]
    when 4 then @slotSix = @diceSlotSix[3]
    when 5 then @slotSix = @diceSlotSix[4]
    when 6 then @slotSix = @diceSlotSix[5]
  end
  @diceList << @slotSix
end

def rollAllDice
    dieSlotOne
    dieSlotTwo
    dieSlotThree
    dieSlotFour
    dieSlotFive
    dieSlotSix
end

def updateRoll
  @diceList.each do |die|
    die.add
  end
end

=begin
This is for all the mouse events
I wanted to break this apart as it might get a little crazy
The problem was it was not saving the dice to a variable correctly
=end

on :mouse_down do |event|
  #puts event.x, event.y
  # This is for Slot 1
  if event.x > 100 && event.x < 200 && event.y > 100 && event.y < 200
    @diceList[0].x = 20
    @diceList[0].y = 20
    @diceList[0].add
  end

  # This is for Slot 2
  if event.x > 300 && event.x < 400 && event.y > 100 && event.y < 200

  end

  # This is for Slot 3
  if event.x > 500 && event.x < 600 && event.y > 100 && event.y < 200
  end

  # This is for Slot 4
  if event.x > 100 && event.x < 200 && event.y > 300 && event.y < 400
 
  end

  # This is for Slot 5
  if event.x > 300 && event.x < 400 && event.y > 300 && event.y < 400

  end

  # This is for Slot 6
  if event.x > 500 && event.x < 600 && event.y > 300 && event.y < 400
 
  end

  # This is for the roll button
  if event.x > 225 && event.x < 425 && event.y > 180 && event.y < 280
    clearDiceSlots   
    rollAllDice
    updateRoll
  end
end
  # TODO: On the if statements hold the object that is clicked on so when that dice does not roll with the rest

  show
