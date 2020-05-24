class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: {maximum: 200} # 50文字以内
end
