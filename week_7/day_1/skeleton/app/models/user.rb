# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :username, :password_digest, presence: true
  validates :username, uniqueness: true
  after_initialize :ensure_session_token

  attr_reader :password

  def ensure_session_token
    self.session_token ||= SecureRandom.base64
  end

  def self.reset_session_token!
    self.session_token = SecureRandom.base64
    self.save!
    self.session_token
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def is_valid_password?(password)
    
  end

end
