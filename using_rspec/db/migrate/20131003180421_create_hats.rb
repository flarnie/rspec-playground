class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :color
      t.string :type
      t.integer :cat_id

      t.timestamps
    end
    
    add_index :hats, :cat_id
  end
end
