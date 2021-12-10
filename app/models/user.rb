class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_one :wallet

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :wallet

  after_create do |user|
    user.wallet.create
  end
  
  # def create_wallet
  #   self.wallet.create
  # end

end

