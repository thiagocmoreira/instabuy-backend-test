class Adress < ApplicationRecord
  validates :zipcode, presence: true, length: { in: 1..8 }
  validates :state, presence: true, length: { in: 3..40 }
  validates :city, presence: true, length: { in: 3..60 }
  validates :street, presence: true, length: { in: 3..60 }
  validates :number, presence:true, :numericality => { :greater_than => 0 }
  belongs_to :person
end
