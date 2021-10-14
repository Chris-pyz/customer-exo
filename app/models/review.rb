class Review < ApplicationRecord
  belongs_to :command
  belongs_to :serving
end
