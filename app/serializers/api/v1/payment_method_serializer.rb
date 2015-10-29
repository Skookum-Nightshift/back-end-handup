class Api::V1::PaymentMethodSerializer < ActiveModel::Serializer

  attributes :cardnumber, :ccv, :expdate, :cardmembername

  def user_id
    object.cardmembername
  end

  #def full_name
  #  "#{object.first_name} #{object.last_name}".strip
  #end

end
