class User < ActiveRecord::Base

  attr_accessor :password_confirmation 
  attr_reader :password
  
  validates :name,:presence => true,:uniqueness => true 
  validates :password, :presence => true, :confirmation => true
  validate :password_must_be_present

  def self.authenticate(name,password)
    if user = find_by_name(name)
      if user.hashed_password == encrypt_password(user.salt,password)
        return user  
      end
    end 
    false 
  end

  def self.encrypt_password(password,salt)
    Digest::SHA256.hexdigest(password+salt)
  end

  def password
   @password 
  end

  def password=(password)
    @password = password 
    if password.present?
      generate_salt
      self.hashed_password = User.encrypt_password(password,salt)
    end
  end


private 
  def password_must_be_present 
    errors.add(:password, "missing password") unless hashed_password.present?  
  end

  def generate_salt 
    self.salt = self.object_id.to_s+rand.to_s
  end

end
