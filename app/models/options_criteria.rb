class OptionsCriteria < ActiveRecord::Base
  belongs_to :option
  belongs_to :criteria
end
