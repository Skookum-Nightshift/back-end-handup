class Api::V1::PaymentController < API::V1::BaseController
  require 'uri'

   def get_pay_methods
    @paymentMethods = PaymentMethod.first(10)
    if @paymentMethods
      render json: @paymentMethods
    else
      render json:  @paymentMethods.errors, status: :unprocessable_entity
    end
  end

end
