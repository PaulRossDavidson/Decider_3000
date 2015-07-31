class OptionsCriteriaController < ApplicationController
  def index
    @options = Optoins.all
    @criteria = Criterium.all
  end
end
