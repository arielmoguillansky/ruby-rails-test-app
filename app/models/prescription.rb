class Prescription < ApplicationRecord
  validates :description, presence: true, length: {minimum: 3}
  validates :prescriptionType, presence: true
end