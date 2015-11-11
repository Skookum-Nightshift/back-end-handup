class AddUserIdToPaymentMethod < ActiveRecord::Migration
  def change
    add_column :payment_methods, :user_id, :integer
  end
end
