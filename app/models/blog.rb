class Blog < ActiveRecord::Base
	has_many :posts
	has_many :owners
	has_many :comments, as: :commentable
	has_many :users, through: :owners

	validates :name, presence: true
	validates :description, length: { in: 15..100 }
end
