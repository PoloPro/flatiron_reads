class Review < ActiveRecord::Base
  # t.integer :user_id
  # t.integer :book_id
  # t.integer :rating
  # t.text :description
  
  belongs_to :book
  belongs_to :user
end
