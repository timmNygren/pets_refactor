class Considering < ActiveRecord::Base
  has_many :pet_considerings, dependent: :destroy
end
