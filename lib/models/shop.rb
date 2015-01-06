module PetShop
  class Shop < ActiveRecord::Base
    has_many :cats
    has_many :dogs
  end
end