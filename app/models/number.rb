class Number < ApplicationRecord
  scope :question_range_of_numbers, -> (min, max) {where(number: min..max)}
end
