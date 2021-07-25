class Category < ApplicationRecord
  include Searchable

  has_and_belongs_to_many :articles

  validates :title, presence: true, uniqueness: true
end
