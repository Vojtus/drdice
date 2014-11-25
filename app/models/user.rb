class User < ActiveRecord::Base
  has_many :rolls
  validates :name, length: { minimum: 3, maximum:56 },
                   uniqueness: true,
                   presence: true
  validates :password, presence: true,
                       length: { minimum: 4 }
  has_secure_password
end
