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

  def user_name=(name)
    self.user = User.find_or_create_by(name: name)
  end

  def user_name
    self.user
  end

end
