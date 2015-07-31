class PrioritiesController < ApplicationController

  def index
    @priorities = Priority.all
  end

  def create
      @priority = Priority.new priority_params
      if @priority.save
      redirect_to priorities_path
      else
      alert('Not Saved')
      end
  end

  def priority_params
     params.require(:priority).permit(:name)
  end
end
