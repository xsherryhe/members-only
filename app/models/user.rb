class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  validates :username, presence: true,
                       uniqueness: true,
                       length: { maximum: 20 }
  validates :password, format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?]).*\Z/,
                                 message: "must contain at least 1 of each: " \
                                          "uppercase letter, lowercase letter, digit, symbol" },
                       unless: -> { password.nil? }

  has_many :posts
end
