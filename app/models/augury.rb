class Augury < ApplicationRecord
  belongs_to :user
  has_one :result

  validates :nickname, presence: true
  validates :sign, presence: true
  validates :birth_id, presence: true
end
