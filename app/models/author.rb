class Author < ActiveRecord::Base
  # t.string :name
  
  has_many :books
end
