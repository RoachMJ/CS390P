class Section < ApplicationRecord
  belongs_to :professor
  belongs_to :course

  validates :number, numericality: { only_integer: true }
  validates :number, length: { is: 4 }
end
