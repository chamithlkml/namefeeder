# frozen_string_literal: true

class MerchantUsers::RegistrationsController < Devise::RegistrationsController

  def create
    if merchant_user_params[:password] != merchant_user_params[:password_confirmation]
      render json: { errors: ["Password confirmation doesn't match Password"] }, status: :unprocessable_entity
    else
      new_merchant_user = MerchantUser.new(merchant_user_params)
      new_merchant_user.jti = SecureRandom.uuid
  
      if new_merchant_user.save
        render json: { merchant_user: new_merchant_user.json_representation, message: 'We have sent you a confirmation email. Kindly check your inbox.' }, status: :created
      else
        render json: { errors: new_merchant_user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  private

  def merchant_user_params
    params.require(:registration).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
