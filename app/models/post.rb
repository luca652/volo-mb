class Post < ApplicationRecord
  belongs_to :user
  belongs_to :language
  has_many :comments, as: :commentable, dependent: :destroy
end
