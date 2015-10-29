class RenamePaymentMethodToPurchase < ActiveRecord::Migration
	def change
		rename_table :purchase, :payment_methods
	end
end
