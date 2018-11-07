class Prison < ApplicationRecord
  has_many :criminals, dependent: :destroy
    # => prison.criminals
  validates :name, presence: true
end

