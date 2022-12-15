class Augury < ApplicationRecord
  belongs_to :user

  validates :nickname, presence: true
  validates :sign, presence: true
  validates :birth_id, presence: true
end
