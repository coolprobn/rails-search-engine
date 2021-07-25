class Author < ApplicationRecord
  has_many :articles

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :nickname, presence: true
end
