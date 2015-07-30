class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :criteria
      t.string :rank
      t.string :score

      t.timestamps null: false
    end
  end
end
