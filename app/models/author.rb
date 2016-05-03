class Author < ActiveRecord::Base
  # t.string :name
  
  has_many :books

  validates :name, presence: true, uniqueness: true

end
