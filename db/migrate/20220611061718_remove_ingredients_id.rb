class RemoveIngredientsId < ActiveRecord::Migration[6.1]
  def change
    remove_columns(:cocktails, :ingredients_id)
  end
end
