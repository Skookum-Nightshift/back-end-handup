class Api::V1::PurchaseSerializer < ActiveModel::Serializer

  attributes :user, :time, :amount, :quantity, :deliverymethod

  #def user_id
  #  object.cardmembername
  #end

  #def full_name
  #  "#{object.first_name} #{object.last_name}".strip
  #end

end