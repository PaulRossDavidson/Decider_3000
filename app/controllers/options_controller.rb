class OptionsController < ApplicationController


  def new
    @option.new
  end

  def option
    @option = Option.new
    :option
  end

  def rank
    :rank
  end

  def score
    :score
  end

  def priorities
    :priorities
  end

  def criteria_params
    params.require(:criteria).permit(:text)
  end
end
