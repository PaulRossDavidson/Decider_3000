class Criterium < ActiveRecord::Base


  before_create :set_sort

  def create
    @criterium = Criterium.new
    if @criterium.save
    redirect_to :root
    else
    puts('Not Saved')
    end
  end

  def criterium
    :criterium
  end

  def destroy
    Criterium.destroy(:id)
  end

  private
    def set_sort
      criteria = Criterium.all.order(sort: :asc)
      #new_sort = criteria.length > 0 ? criteria.last.sort + 1 : 0;
      #self.sort = new_sort
    end
end