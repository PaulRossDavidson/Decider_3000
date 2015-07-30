class OptionController < ApplicationController


  def index
    @option = Option.all
  end
  def new
    @option.new
  end

  def option
    :option
    has_many :criteria
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
