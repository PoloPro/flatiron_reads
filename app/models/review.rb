class Review < ActiveRecord::Base
  # t.integer :user_id
  # t.integer :book_id
  # t.integer :rating
  # t.text :description
  
  belongs_to :book
  belongs_to :user

  validates :book_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true
  validates :description, presence: true
end
