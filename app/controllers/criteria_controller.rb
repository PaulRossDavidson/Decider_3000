class CriteriaController < ApplicationController

  def show
    Criterium.find(params[:id])
  end


def create
    @criterium = Criterium.new criterium_params
    if @criterium.save
    redirect_to criterium_path
    else
    alert('Not Saved')
    end
  end

  def destroy
    Criterium.destroy(:id)
  end

  def index
    @criteria = Criterium.all
  end

  def criterium_params
     params.require(:criterium).permit(:text)
  end

   def sort_up
    criteria = Criterium.all.order(sort: :asc)

    #loop through all items (skip first... first item cannot be sorted up)
    (1...criteria.length).each do |i|
      if(criteria[i].id == params[:id].to_i)
        #found the task swap it with the previous item
        criteria[i].sort,criteria[i-1].sort = criteria[i-1].sort,criteria[i].sort
        criteria[i].save
        criteria[i-1].save
      end
    end
    # redirect_to :tasks
    @criteria = Criterium.all.order(sort: :asc);
    render partial: 'criteria'
  end

  def sort_down
    criteria = Criterium.all.order(sort: :asc)

    #loop through all items (skip last... last item cannot be sorted down)
    (0...criteria.length-1).each do |i|
      if(criteria[i].id == params[:id].to_i)
        #found the task swap it with the next item
        criteria[i].sort,criteria[i+1].sort = criteria[i+1].sort,criteria[i].sort
        criteria[i].save
        criteria[i+1].save
      end
    end
    # redirect_to :criteria
    @criteria = Criterium.all.order(sort: :asc);
    render parital: 'criteria'
  end

end
