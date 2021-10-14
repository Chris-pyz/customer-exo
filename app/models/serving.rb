class Serving < ApplicationRecord
  belongs_to :user
  
  has_many :commands
  has_many :reviews, dependent: :destroy

end
