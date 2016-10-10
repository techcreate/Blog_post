class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :comments, as: :commentable

  validates :title, :content, presence: true

end
