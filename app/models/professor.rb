class Professor < ApplicationRecord
  has_many :sections, :dependent => :destroy
  has_many :courses, through: :sections

  validates :professors_names, uniqueness: true
  validates :professors_names, :length => { :in => 2..20}
  validates :professors_names, format: { with: /\A[a-zA-Z\s]+\z/,message: "no numbers allowed, only letters"}
end
