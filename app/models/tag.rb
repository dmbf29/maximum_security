class Tag < ApplicationRecord
  has_many :criminal_tags
  # @tag.criminal_tags
  has_many :criminals, through: :criminal_tags

  validates :name, presence: true
end
