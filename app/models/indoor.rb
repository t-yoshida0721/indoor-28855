class Indoor < ApplicationRecord
  
  has_one_attached :image  
  belongs_to :user
  has_many :messages
end



