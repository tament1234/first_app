class Post < ActiveRecord::Base
  attr_accessible :title, :content

  validates :title, :content , :presence =>true
  validates :title, length: {minimum: 2, maximum: 100}, allow_blank: false
  validates :title, :uniqueness => {:message => "Already taken."}
end
