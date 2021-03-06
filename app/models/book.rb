class Book < ActiveRecord::Base
  # t.integer :author_id
  # t.string :image_url
  # t.string :title
  # t.text :synopsis

  belongs_to :author
  has_many :reviews
  has_many :users, through: :reviews

  validates :title, presence: true, uniqueness: true
  validates :synopsis, presence: true

  validate :one_review_per_user

  def average_rating
    rating_sum = 0.0
    reviews.each do |review|
      rating_sum += review.rating
    end
    (reviews.count != 0) ? (rating_sum / reviews.count) : 0
  end

  def one_review_per_user
    users = self.reviews.map { |review| review.user }
    errors.add(:reviews, "cannot have multiple reviews from the same user") if (users.uniq.count != users.count)
  end

  def author_name=(name)
    self.author = Author.find_or_create_by(name: name) if !name.blank?
  end

  def author_name
    self.author.name if self.author
  end

end
