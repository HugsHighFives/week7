class Review < ActiveRecord::Base
  belongs_to :movie

  # a review should only be saved if
  #   the summary is not blank
  validates :summary, presence: true, uniqueness: true

  #   the rating is an integer between 1 and 5
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
