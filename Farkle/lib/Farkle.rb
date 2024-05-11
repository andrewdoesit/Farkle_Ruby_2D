# frozen_string_literal: true

require_relative "Farkle/version"
require "ruby2d"

set( { :title => "Farkle!" } )
set( { :background => "navy" } )
# You can also write this:
# set :title 'Farkle!', background: 'navy'

pointDisplay = Text.new( @playerPoints, x: 400, y: 400, size: 50, color: 'red' )
Text.new( 'Points: ', x: 150, y: 400, size: 50, color: 'red' )
rollButton = Rectangle.new( x: 225, y: 180, width: 200, height: 100, color: 'red' )
text = Text.new( 'Roll', x: 250, y: 200, size: 75, color: 'white' )
@diceList = []
@playerList = []
@diceNumbers = []
@playerPointsList = []
@playerPoints = 0


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
  end


def dieSlotOne

  if @playerList.include?(@slotOne)
    if @playerPointsList.include?(@diceNumbers[0])
    puts "Your dice is stored in the diceList and in the playerPointsList #{@playerPointsList}"
    @playerList[0].x = 20
    @playerList[0].y = 20
    @playerList[0].add
    else
    @playerPointsList << @diceNumbers[0]
    puts "The player List has been updated with #{@playerPointsList}"
    @playerList[0].x = 20
    @playerList[0].y = 20
    @playerList[0].add
    end
  
  else
    @diceList.delete(@slotOne)
    roll
    case @roll
    when 1 then @slotOne = @diceSlotOne[0]
    when 2 then @slotOne = @diceSlotOne[1]
    when 3 then @slotOne = @diceSlotOne[2]
    when 4 then @slotOne = @diceSlotOne[3]
    when 5 then @slotOne = @diceSlotOne[4]
    when 6 then @slotOne = @diceSlotOne[5]
    end
    @diceNumbers.insert(0, @roll)
    @diceList.insert(0, @slotOne)    
    @diceList[0].add    
  end
end



def dieSlotTwo
  if @playerList.include?(@slotTwo)
    if @playerPointsList.include?(@diceNumbers[1])
      puts "Your dice is stored in the diceList and in the playerPointsList #{@playerPointsList}"
      @playerList[1].x = 100
      @playerList[1].y = 20
      @playerList[1].add
    else
      @playerPointsList << @diceNumbers[1]
      puts "The player List has been updated with #{@playerPointsList}"
      @playerList[1].x = 100
      @playerList[1].y = 20
      @playerList[1].add
    end

  else
    @diceList.delete(@slotTwo)
      roll
      case @roll
      when 1 then @slotTwo = @diceSlotTwo[0]
      when 2 then @slotTwo = @diceSlotTwo[1]
      when 3 then @slotTwo = @diceSlotTwo[2]
      when 4 then @slotTwo = @diceSlotTwo[3]
      when 5 then @slotTwo = @diceSlotTwo[4]
      when 6 then @slotTwo = @diceSlotTwo[5]
    end
    @diceNumbers.insert(1, @roll)
    @diceList.insert(1, @slotTwo)
    @diceList[1].add
  end
end



def dieSlotThree
  if @playerList.include?(@slotThree)
    if @playerPointsList.include?(@diceNumbers[2])
      puts "Your dice is stored in the diceList and in the playerPointsList #{@playerPointsList}"
      @playerList[2].x = 180
      @playerList[2].y = 20
      @playerList[2].add
    else
      @playerPointsList << @diceNumbers[2]
      puts "The player List has been updated with #{@playerPointsList}"
      @playerList[2].x = 180
      @playerList[2].y = 20
      @playerList[2].add
    end

  else
    @diceList.delete(@slotThree)
      roll
      case @roll
      when 1 then @slotThree = @diceSlotThree[0]
      when 2 then @slotThree = @diceSlotThree[1]
      when 3 then @slotThree = @diceSlotThree[2]
      when 4 then @slotThree = @diceSlotThree[3]
      when 5 then @slotThree = @diceSlotThree[4]
      when 6 then @slotThree = @diceSlotThree[5]
    end
    @diceNumbers.insert(2, @roll)
    @diceList.insert(2, @slotThree)
    @diceList[2].add
  end
end



def dieSlotFour
  if @playerList.include?(@slotFour)
    if @playerPointsList.include?(@diceNumbers[3])
      puts "Your dice is stored in the diceList and in the playerPointsList #{@playerPointsList}"
      @playerList[3].x = 260
      @playerList[3].y = 20
      @playerList[3].add
    else
      @playerPointsList << @diceNumbers[3]
      puts "The player List has been updated with #{@playerPointsList}"
      @playerList[3].x = 260
      @playerList[3].y = 20
      @playerList[3].add
    end

  else
    @diceList.delete(@slotFour)
      roll
      case @roll
      when 1 then @slotFour = @diceSlotFour[0]
      when 2 then @slotFour = @diceSlotFour[1]
      when 3 then @slotFour = @diceSlotFour[2]
      when 4 then @slotFour = @diceSlotFour[3]
      when 5 then @slotFour = @diceSlotFour[4]
      when 6 then @slotFour = @diceSlotFour[5]
    end
    @diceNumbers.insert(3, @roll)
    @diceList.insert(3, @slotFour)
    @diceList[3].add
  end
end



def dieSlotFive
  if @playerList.include?(@slotFive)
    if @playerPointsList.include?(@diceNumbers[4])
    puts "Your dice is stored in the diceList and in the playerPointsList #{@playerPointsList}"
    @playerList[4].x = 340
    @playerList[4].y = 20
    @playerList[4].add
    else
      @playerPointsList << @diceNumbers[4]
      puts "The player List has been updated with #{@playerPointsList}"
      @playerList[4].x = 340
      @playerList[4].y = 20
      @playerList[4].add
    end

  else
    @diceList.delete(@slotFive)
      roll
      case @roll
      when 1 then @slotFive = @diceSlotFive[0]
      when 2 then @slotFive = @diceSlotFive[1]
      when 3 then @slotFive = @diceSlotFive[2]
      when 4 then @slotFive = @diceSlotFive[3]
      when 5 then @slotFive = @diceSlotFive[4]
      when 6 then @slotFive = @diceSlotFive[5]
    end
    @diceNumbers.insert(4, @roll)
    @diceList.insert(4, @slotFive)
    @diceList[4].add
  end
end

def dieSlotSix
  if @playerList.include?(@slotSix)
    if @playerPointsList.include?(@diceNumbers[5])
      puts "Your dice is stored in the diceList and in the playerPointsList #{@playerPointsList}"
      @playerList[5].x = 420
      @playerList[5].y = 20
      @playerList[5].add
    else
      @playerPointsList << @diceNumbers[5]
      puts "The player List has been updated with #{@playerPointsList}"
      @playerList[5].x = 420
      @playerList[5].y = 20
      @playerList[5].add
    end


  else
    @diceList.delete(@slotSix)
      roll
      case @roll
      when 1 then @slotSix = @diceSlotSix[0]
      when 2 then @slotSix = @diceSlotSix[1]
      when 3 then @slotSix = @diceSlotSix[2]
      when 4 then @slotSix = @diceSlotSix[3]
      when 5 then @slotSix = @diceSlotSix[4]
      when 6 then @slotSix = @diceSlotSix[5]
    end
    @diceNumbers.insert(5, @roll)
    @diceList.insert(5, @slotSix)
    @diceList[5].add
  end
end

=begin
TODO: Create a Point system using the update loop. Might be best to create something to assing the at @roll number to
for keeping track of points. Probaly just a list for the dice rolls 
A 1 in the @playerList is worth 100 points && Three 1's in the list is worth 1000 points
A 5 in the @playerList is worth 50 points && Three 5's in the list is worth 500 points
If the the dice are a 2, 3, 4, or 6 then it is worth 0 unless you have 3 of the same values 
If you have 3 of the same values then you get 200 points for three 2's, 300 points for three 3's, etc.
If you roll a 1, 2, 3, 4, 5, and 6 then you get 1000 points
4 of the same values is worth 1000 points
5 of the same values is worth 2000 points
6 of the same values is worth 3000 points
3 pairs of the same values is worth 1500 points
2 Triplets of the same values is worth 2500 points
and 4 of the same values && a pair is worth 1500 points
=end

def pointLogic

  #TODO: If the points are added to the playerPointsList and another point is added dont add it again

  if @playerPointsList.count(1) == 1
    @playerPoints += 100


    puts "#{@playerPoints}"
  elsif @playerPointsList.count(5) == 3
    @playerPoints += 50
    puts "#{@playerPoints}"
  else
    # Empty Block to do nothing if those values do not exist
    puts "Not Working"
  end   
end

# The update loop will keep the bank of points up to date



update do

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
    unless @playerList.include?(@diceNumbers[0])
    @playerList.insert(0, @slotOne)
    dieSlotOne
    pointLogic
    else
      puts "Dice is already in the list"
    end
  end

  # This is for Slot 2
  if event.x > 300 && event.x < 400 && event.y > 100 && event.y < 200
    unless @playerList.include?(@diceNumbers[1])
    @playerList.insert(1, @slotTwo)
    dieSlotTwo
    pointLogic
    else
      puts "Dice is already in the list"
    end
  end

  # This is for Slot 3
  if event.x > 500 && event.x < 600 && event.y > 100 && event.y < 200
    unless @playerList.include?(@diceNumbers[2])
    @playerList.insert(2, @slotThree)
    dieSlotThree
    pointLogic
    else
      puts "Dice is already in the list"
    end
  end

  # This is for Slot 4
  if event.x > 100 && event.x < 200 && event.y > 300 && event.y < 400
    unless @playerList.include?(@diceNumbers[3])
    @playerList.insert(3, @slotFour)
    dieSlotFour
    pointLogic
    else
      puts "Dice is already in the list"
    end
  end

  # This is for Slot 5
  if event.x > 300 && event.x < 400 && event.y > 300 && event.y < 400
    unless @playerList.include?(@diceNumbers[4])
    @playerList.insert(4, @slotFive)
    dieSlotFive
    pointLogic
    else
      puts "Dice is already in the list"
    end
  end

  # This is for Slot 6

  # TODO: Its not able to insert the dice if it is already in the list
  if event.x > 500 && event.x < 600 && event.y > 300 && event.y < 400
    unless @playerList.include?(@diceNumbers[5])
    @playerList.insert(5, @slotSix)
    dieSlotSix
    pointLogic
    else
      puts "Dice is already in the list"
    end
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
