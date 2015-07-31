class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy #comments get deleted if posts are deleted.
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end
