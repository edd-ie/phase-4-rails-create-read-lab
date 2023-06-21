class ChangePriceType < ActiveRecord::Migration[6.1]
  def change
    change_column :plants, :price, :float
  end
end
