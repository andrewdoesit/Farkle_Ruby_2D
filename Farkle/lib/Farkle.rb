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
@die = nil


@dieOne = Sprite.new('Sprites/dieWhite1.png')
@dieTwo = Sprite.new('Sprites/dieWhite2.png')
@dieThree = Sprite.new('Sprites/dieWhite3.png')
@dieFour = Sprite.new('Sprites/dieWhite4.png')
@dieFive = Sprite.new('Sprites/dieWhite5.png')
@dieSix = Sprite.new('Sprites/dieWhite6.png')
# TODO: call the reset method to reset the dice



def roll
    @roll = [*1..6].sample
    case @roll
    when 1 
      @die = @dieOne
    when 2
      @die = @dieTwo
    when 3
      @die = @dieThree
    when 4
      @die = @dieFour
    when 5
      @die = @dieFive
    when 6
      @die =@dieSix
    end
    #@die.add

    puts "You rolled a #{@roll}"
  end

def resetDice
    @dieOne.remove
    @dieTwo.remove
    @dieThree.remove
    @dieFour.remove
    @dieFive.remove
    @dieSix.remove
  end
 

  #TODO: if the dice eqaul the same value then show both of them on the screen

def dieSlotOne
    roll
    @slotOne = @die
    if @slotOne == @slotTwo or @slotOne == @slotThree or @slotOne == @slotFour or @slotOne == @slotFive or @slotOne == @slotSix
        @slotOne.add
    end
    @slotOne.x = 100
    @slotOne.y = 100
    @slotOne.add
  end


def dieSlotTwo
    roll
    @slotTwo = @die
    @slotTwo.x = 300
    @slotTwo.y = 100
    # TODO: if the dice eqaul the same value then show both of them on the screen
    if @slotTwo == @slotOne or @slotTwo == @slotThree or @slotTwo == @slotFour or @slotTwo == @slotFive or @slotTwo == @slotSix
        @slotTwo.add

    end
    @slotTwo.add
  end

def dieSlotThree
    roll
    @slotThree = @die
    @slotThree.x = 500
    @slotThree.y = 100
    if @slotThree == @slotOne or @slotThree == @slotTwo or @slotThree == @slotFour or @slotThree == @slotFive or @slotThree == @slotSix
        @slotThree.add
    end
    @slotThree.add
end

def dieSlotFour
    roll
    @slotFour = @die
    @slotFour.x = 100
    @slotFour.y = 300
    if @slotFour == @slotOne or @slotFour == @slotTwo or @slotFour == @slotThree or @slotFour == @slotFive or @slotFour == @slotSix
        @slotFour.add
    end
    @slotFour.add
end

def dieSlotFive
    roll
    @slotFive = @die
    @slotFive.x = 300
    @slotFive.y = 300
    if @slotFive == @slotOne or @slotFive == @slotTwo or @slotFive == @slotThree or @slotFive == @slotFour or @slotFive == @slotSix
        @slotFive.add
    end
    @slotFive.add
end

def dieSlotSix
    roll
    @slotSix = @die
    @slotSix.x = 500
    @slotSix.y = 300
    if @slotSix == @slotOne or @slotSix == @slotTwo or @slotSix == @slotThree or @slotSix == @slotFour or @slotSix == @slotFive
        @slotSix.add
    end
    @slotSix.add
end

def rollAllDice
    dieSlotOne
    dieSlotTwo
    dieSlotThree
    dieSlotFour
    dieSlotFive
    dieSlotSix
end

#update do
#end

=begin
This is for all the mouse events
I wanted to break this apart as it might get a little crazy
The problem was it was not saving the dice to a variable correctly
=end

on :mouse_down do |event|
  puts event.x, event.y
  # This is for Slot 1
  if event.x > 100 && event.x < 200 && event.y > 100 && event.y < 200
    # TODO: find out how to add the sprite to the object
    @slotOne.remove
    @slotOne.x = 50
    @slotOne.y = 25
    @slotOne.add
  end

  # This is for Slot 2
  if event.x > 300 && event.x < 400 && event.y > 100 && event.y < 200
    @slotTwo.remove
    @slotTwo.x = 150
    @slotTwo.y = 25
    @slotTwo.add
  end

  # This is for Slot 3
  if event.x > 500 && event.x < 600 && event.y > 100 && event.y < 200
    @slotThree.remove
    @slotThree.x = 250
    @slotThree.y = 25
    @slotThree.add
  end

  # This is for Slot 4
  if event.x > 100 && event.x < 200 && event.y > 300 && event.y < 400
    @slotFour.remove
    @slotFour.x = 50
    @slotFour.y = 125
    @slotFour.add
  end

  # This is for Slot 5
  if event.x > 300 && event.x < 400 && event.y > 300 && event.y < 400
    @slotFive.remove
    @slotFive.x = 150
    @slotFive.y = 125
    @slotFive.add
  end

  # This is for Slot 6
  if event.x > 500 && event.x < 600 && event.y > 300 && event.y < 400
    @slotSix.remove
    @slotSix.x = 250
    @slotSix.y = 125
    @slotSix.add
  end

  # This is for the roll button
  # TODO: Find out why it wont show the dieSlotOne and dieSlotTwo at the same time if the dice are the same value
  
  if event.x > 225 && event.x < 425 && event.y > 180 && event.y < 280
    resetDice
    rollAllDice
  end

 
end

  # TODO: On the if statements hold the object that is clicked on so when that dice does not roll with the rest


show
