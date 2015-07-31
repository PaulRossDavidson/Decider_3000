class OptionsController < ApplicationController


  def index
    @options = Option.all
  end

  def create
    @option = Option.create option_params
    if @option.save
    redirect_to option_path
    else
    alert('Not Saved')
    end
  end

  def options
    @options = Option.all
    :option
  end

  def rank
    :rank
  end

  def score
    :score
  end

  def option_params
    params.require(:option).permit(:criteria)
  end
end
