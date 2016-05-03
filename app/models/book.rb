class Book < ActiveRecord::Base
  # t.integer :author_id
  # t.string :image_url
  # t.string :title
  # t.text :synopsis

  belongs_to :author
  has_many :reviews
  has_many :users, through: :reviews

  def average_rating
  end

end
