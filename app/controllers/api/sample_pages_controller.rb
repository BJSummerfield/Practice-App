class Api::SamplePagesController < ApplicationController

  def fortune_method
    fortune = ["You will die", "You'll be happy", "Eat more"]
    fortune = fortune.shuffle
    @message = fortune[0]
    render 'fortune.json.jbuilder'
  end

  def lotto_method
    @lotto = []
    6.times do
      number = rand(1..60)
      @lotto << number
    end
    render 'lotto_guesser.json.jbuilder'
  end

  def bottles_method
    @bottles = []
    count = 99
    count.times do
       @bottles<<"#{count} bottles of Beer on the wall"
       @bottles<<"#{count} bottles of Beer"
       @bottles<<"Take one down and pass it around"
       @bottles<<"#{count - 1} Bottles of beer on the wall"
       @bottles<<""
       count -= 1
    
  end
  render 'bottles.json.jbuilder'
  end
end
