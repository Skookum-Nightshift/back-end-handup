class PaymentMethod < ActiveRecord::Base
 	#devise :database_authenticatable, :registerable, :recoverable, :rememberable, 
 	#	:trackable, :validatable

 	belongs_to :user

	validates :cardnumber, presence: true
	validates :ccv, presence: true
	validates :expdate, presence: true
	validates :cardmembername, presence: true

end