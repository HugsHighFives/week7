class Movie < ActiveRecord::Base

  has_many :reviews

  validates :title, presence: true, uniqueness: true

end
