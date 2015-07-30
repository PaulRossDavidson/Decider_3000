class Criterium < ActiveRecord::Base

  belongs_to :option

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
end