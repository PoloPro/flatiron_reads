class Review < ActiveRecord::Base
  # t.integer :user_id
  # t.integer :book_id
  # t.integer :rating
  # t.text :description
  
  belongs_to :book
  belongs_to :user

  validates :book_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :description, presence: true

  validate :one_review_per_book

  def user_name=(name)
    self.user = User.find_or_create_by(name: name)
  end

  def user_name
    self.user
  end

  def one_review_per_book
    all_reviews = Book.find(book_id).reviews
    all_reviews.each do |review|
      errors.add(:base, "cannot submit multiple reviews for the same book") if (review.user == self.user)
    end
  end

end
