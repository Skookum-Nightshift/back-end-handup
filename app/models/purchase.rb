class Purchase < ActiveRecord::Base
 	#devise :database_authenticatable, :registerable, :recoverable, :rememberable, 
 	#	:trackable, :validatable

	validates :user, presence: true
	validates :time, presence: true
	validates :amount, presence: true
	validates :quantity, presence: true
	validates :deliverymethod, presence: true
end