class RemovePrioritiesFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :priorities
  end
end
