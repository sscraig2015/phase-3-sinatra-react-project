class UserSavedDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_drinks do |t|
      t.string :name
      t.string :directions
  end
end
