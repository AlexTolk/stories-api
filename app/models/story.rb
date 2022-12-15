class Story < ApplicationRecord
  has_many :comments
  validates :title, :text, presence: true
end
