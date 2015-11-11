class Api::V1::PaymentMethodSerializer < ActiveModel::Serializer

  attributes :cardnumber, :ccv, :expdate, :cardmembername#, :full_name

  def user_id
    object.cardmembername
  end

  #def full_name
  #  "#{object.cardmembername} #{object.cardmembername}".strip
  #end

end
