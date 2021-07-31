class Article < ApplicationRecord
  include Searchable

  belongs_to :author

  has_and_belongs_to_many :categories

  accepts_nested_attributes_for :categories

  validates :title, presence: true
  validates :content, presence: true
  validates :published_on, presence: true
end
