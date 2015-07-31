class CreateOptionsCriteria < ActiveRecord::Migration
  def change
    create_table :options_criteria do |t|
      t.references :option, index: true, foreign_key: true
      t.references :criterium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
