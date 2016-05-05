class Author < ActiveRecord::Base
  # t.string :name
  has_many :books
  accepts_nested_attributes_for :books, reject_if: :all_blank

  validates :name, presence: true, uniqueness: true
end
