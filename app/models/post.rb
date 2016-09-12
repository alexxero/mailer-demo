class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :body, presence: true, length: {minimum: 3, maximum: 500}
end
