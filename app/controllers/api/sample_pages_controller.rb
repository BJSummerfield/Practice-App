class Api::SamplePagesController < ApplicationController

  def fortune_method
    @message = "happy day"
    render 'fortune.json.jbuilder'
  end


end
