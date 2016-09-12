class Comment < ActiveRecord::Base
  belongs_to :post

  validates :content, presence: true, length: {minimum: 3, maximum: 150}
end
