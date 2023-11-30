class MerchantUser < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable, :lockable, :jwt_authenticatable, jwt_revocation_strategy: self

  def json_representation
    attributes.slice('id', 'email', 'first_name', 'last_name', 'jti')
  end
end
