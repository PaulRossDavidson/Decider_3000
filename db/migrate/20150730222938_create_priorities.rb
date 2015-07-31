class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :name
      t.integer :sort_order
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
