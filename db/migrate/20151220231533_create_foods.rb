class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :protein, precision: 5, scale: 2
      t.decimal :fat, precision: 5, scale: 2
      t.decimal :carbs, precision: 5, scale: 2
      t.decimal :portion_size, precision: 10, scale: 2
      t.string :portion_units

      t.timestamps null: false
    end
  end
end
