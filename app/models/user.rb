class User < ApplicationRecord
    has_many :posts
    
    validates :username, presence: true, length: {minimum: 3, maximum: 10}, uniqueness: {case_sensitive: false}
    validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: {case_sensitive: false}
    
end
