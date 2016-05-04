class User < ActiveRecord::Base
  # t.string :name
  
  has_many :reviews
  has_many :books, through: :reviews

  validates :name, presence: true, uniqueness: true

  after_destroy :destroy_reviews

  def destroy_reviews
    self.reviews.delete_all
  end
end
