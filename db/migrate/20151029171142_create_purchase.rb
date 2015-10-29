class CreatePurchase < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :user
      t.string :time
      t.string :amount
      t.string :quantity
      t.string :deliverymethod
    end
  end
end
