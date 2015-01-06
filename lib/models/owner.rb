module PetShop
  class Owner < ActiveRecord::Base
    has_many :cats
    has_many :dogs
  end
end