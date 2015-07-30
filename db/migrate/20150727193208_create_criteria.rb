class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
