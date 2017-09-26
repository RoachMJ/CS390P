class Professor < ApplicationRecord
  has_many :courses
  has_many :sections, through: :courses
end
