class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
            format:     { with: EMAIL_FORMAT },
            uniqueness: true
end
