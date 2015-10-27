class CreatePaymentMethod < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :cardnumber
      t.string :ccv
      t.string :expdate
      t.string :cardmembername
    end
  end
end
