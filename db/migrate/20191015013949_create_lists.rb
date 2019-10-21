class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :age
      t.text :wish
      t.timestamps
    end
  end
end
