class CreateEatens < ActiveRecord::Migration
  def change
    create_table :eatens do |t|
      t.references :food, index: true
      t.decimal :portion_factor, precision: 5, scale: 2
      t.datetime :date
      t.timestamps null: false
      
      add_foreign_key :eatens, :foods
    end
  end
end
