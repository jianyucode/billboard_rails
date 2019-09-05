class Song < ApplicationRecord
  belongs_to :artist
  has_one :chart
end
