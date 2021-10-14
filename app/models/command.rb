class Command < ApplicationRecord
  belongs_to :user
  belongs_to :serving

  has_many :reviews
end
