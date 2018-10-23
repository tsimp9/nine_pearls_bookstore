class Book < ApplicationRecord
  validates :title, presence: true

  belongs_to :author

  has_one_attached :book_cover

  has_many :sales
  has_many :users, through: :sales

end
