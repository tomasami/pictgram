class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  VALID_EMAIL_REGEX = /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  PW_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
  validates :password, presence: true, format: { with: PW_REGEX }
  has_secure_password
end

