class Indoor < ApplicationRecord
  
  has_one_attached :image  
  belongs_to :user
  has_many :messages

  validates :image,presence: true
  validates :indoor_name, presence: true
  validates :indoor_text, presence: true
end



