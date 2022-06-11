class Cocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :description
      t.integer :ingredients_id, array:true, default:[] 
    end
  end
end
