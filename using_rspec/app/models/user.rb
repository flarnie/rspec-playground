class User < ActiveRecord::Base
  attr_accessible :password_hash, :session_token, :username
  # validates :username, :presence => true, :uniqueness => true
  # validates :session_token => true, :uniqueness => true
  
  #  after_initialize :ensure_session_token
  
  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
  
  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
  end
  
  private
    def ensure_session_token
      self.session_token ||= self.class.generate_session_token
    end
  
end
