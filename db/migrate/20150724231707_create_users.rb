class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :decisions
      t.string :priorities

      t.timestamps null: false
    end
  end
end
