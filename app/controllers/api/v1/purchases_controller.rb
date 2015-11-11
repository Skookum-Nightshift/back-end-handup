class Api::V1::PurchasesController < API::V1::BaseController
  require 'uri'

   def get_purchases
    @addPurchases = Purchase.first(10)
    if @addPurchases
      render json: @addPurchases
    else
      render json:  @addPurchases.errors, status: :unprocessable_entity
    end
  end

end
