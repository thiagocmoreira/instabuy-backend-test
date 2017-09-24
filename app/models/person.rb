class Person < ApplicationRecord
  validates :name, presence: true, length: { in: 1..40 }
  validates :age, presence: true, :numericality => { :greater_than => 0 }
  validates :cpf, presence: true, length: { is: 11 }
  has_many :adresses
end
