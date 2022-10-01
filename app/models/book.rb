class Book < ApplicationRecord
  has_many :user_books
  has_many :users, through: :user_books
  has_many :comments
  has_many :reviews
end
