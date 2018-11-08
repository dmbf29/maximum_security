class Criminal < ApplicationRecord
  belongs_to :prison
  has_many :criminal_tags
  has_many :tags, through: :criminal_tags

  # SPECIALTIES = %w(cannibal juggling strangling arson murder)

  validates :name, presence: true
  # validates :specialty, inclusion: { in: SPECIALTIES }
end
