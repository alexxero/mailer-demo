class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

  belongs_to :user
  has_many :comments
end
