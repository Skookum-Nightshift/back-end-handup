class Api::V1::RegistrationsController < API::V1::BaseController
  require 'uri'

  def create
    random_password = Devise.friendly_token.first(8)
    mapped_params = user_params
    mapped_params[:password] = random_password
    mapped_params[:password_confirmation] = random_password

    @user = User.new(mapped_params)
    if @user.save
      RegistrationMailer.welcome(@user, random_password).deliver_now
      render json: @user, serializer: Api::V1::SessionSerializer, root: nil
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  def add_card
    @card = PaymentMethod.new(cc_params)
    logger.debug "add_card"
    if @card.save
      render json: @card, serializer: Api::V1::PaymentMethodSerializer, root: nil
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  def add_purchase
    @purchase = Purchase.new(purchase_params)
    logger.debug "add_purchase"
    if @purchase.save
      render json: @purchase, serializer: Api::V1::PurchaseSerializer, root: nil
    else
      render json:  @purchase.errors, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :streetaddress, :city, :state, :zip)
    end

    def cc_params
      params.require(:payment_method).permit(:cardnumber, :ccv, :expdate, :cardmembername)
    end

    def purchase_params
      params.require(:purchase).permit(:user, :time, :amount, :quantity, :deliverymethod)
    end
end
