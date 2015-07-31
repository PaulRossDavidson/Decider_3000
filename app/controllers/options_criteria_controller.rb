class OptionsCriteriaController < ApplicationController
  def index
    @options = Option.all
    @criteria = Criterium.all
  end
end
