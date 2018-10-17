class Book < ApplicationRecord
  validates :title, presence: true

  has_many :book_authors
  has_many :authors, through: :book_authors

  has_many :sales
  has_many :users, through: :sales



end
