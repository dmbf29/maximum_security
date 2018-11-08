class CriminalTag < ApplicationRecord
  belongs_to :criminal
  belongs_to :tag
end
