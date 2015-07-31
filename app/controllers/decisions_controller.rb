class DecisionsController < ApplicationController

  def show
    Decision.find(params[:id])
  end

  def index
    @decisions = Decision.all
  end

   def create
      @decision = Decision.new decision_params
      if @decision.save
      redirect_to decision_path
      else
      alert('Not Saved')
      end
  end

  def decision_params
     params.require(:decision).permit(:name)
  end
end
