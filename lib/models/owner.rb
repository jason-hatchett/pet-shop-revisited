module PetShop
  class Owner < ActiveRecord::Base
    has_many :cats
    has_many :dogs
    validates :username, presence: true, length: { in: 4..12,
      message: 'username must be between 4 and 12 characters' }
    validates :password, presence: true, length: { minimum: 6, 
      message: 'password must be at least 6 characters' }
    validates :password, format: { with: /^(?=.*[a-zA-Z])(?=.*[0-9])/,
      message: 'password must contain both letters and numbers'}
  end
end