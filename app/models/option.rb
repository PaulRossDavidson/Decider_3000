class Option < ActiveRecord::Base
  before_create :set_sort
  belongs_to :decision


  private
  def set_sort
    criteria = Criterium.all.order(sort: :asc)
    new_sort = criteria.length >0 ? criteria.last.sort
    self.sort = new_sort
  end
end
