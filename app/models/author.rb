class Author < ActiveRecord::Base
  # t.string :name
  has_many :books
  accepts_nested_attributes_for :books

  validates :name, presence: true, uniqueness: true
end
