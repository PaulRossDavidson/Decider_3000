class AddSortToCriterium < ActiveRecord::Migration
  def change
    add_column :criteria, :sort, :integer
  end
end
