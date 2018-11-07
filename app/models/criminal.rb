class Criminal < ApplicationRecord
  belongs_to :prison

  SPECIALTIES = %w(cannibal juggling strangling arson murder)

  validates :name, presence: true
  validates :specialty, inclusion: { in: SPECIALTIES }
end
