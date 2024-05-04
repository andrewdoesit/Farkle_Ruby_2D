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



class RollDice

  attr_accessor :dieOne, :dieTwo, :dieThree, :dieFour, :dieFive, :dieSix

  def initialize
    @dieOne = Sprite.new('Sprites/dieWhite1.png')
    @dieTwo = Sprite.new('Sprites/dieWhite2.png')
    @dieThree = Sprite.new('Sprites/dieWhite3.png')
    @dieFour = Sprite.new('Sprites/dieWhite4.png')
    @dieFive = Sprite.new('Sprites/dieWhite5.png')
    @dieSix = Sprite.new('Sprites/dieWhite6.png')
    resetDice
  end


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
    @die.add

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

  def dieSlotOne
    roll
    @die.x = 100
    @die.y = 100
  end

  def dieSlotTwo
    roll
    @die.x = 300
    @die.y = 100
  end

  def dieSlotThree
    roll
    @die.x = 500
    @die.y = 100
  end

  def dieSlotFour
    roll
    @die.x = 100
    @die.y = 300
  end

  def dieSlotFive
    roll
    @die.x = 300
    @die.y = 300
  end

  def dieSlotSix
    roll
    @die.x = 500
    @die.y = 300
  end
end


#@slotOne = RollDice.new.dieSlotOne



RollDice.new.roll

on :mouse_down do |event|
  puts event.x, event.y
  if event.x > 225 && event.x < 425 && event.y > 180 && event.y < 280
    RollDice.new.dieSlotOne
    RollDice.new.dieSlotTwo
    RollDice.new.dieSlotThree
    RollDice.new.dieSlotFour
    RollDice.new.dieSlotFive
    RollDice.new.dieSlotSix
  end
end

  # TODO: On the if statements hold the object that is clicked on so when that dice does not roll with the rest


show
