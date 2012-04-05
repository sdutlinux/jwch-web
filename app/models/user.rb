class User < ActiveRecord::Base
  attr_accessor :department, :hashed_password, :name
  attr_reader :password
  
  validates :name,:presence => true,:uniqueness => true 
  validates :password, :confirmation => true

  def self.authenticate(name,passworld)
    if user = User.find_by_name(name)
      if user.hashed_password == encrypt_password(user.salt,passworld)
       user  
      end
    end 
  end

  def password=(password)
   @password = password 
   if password.present?
    generate_salt
    self.hashed_password = self.encrypt_password(password,salt)
   end
  end

  def self.encrypt_password(password,salt)
    Digest::SHA256.hexdigest(password+salt)
  end


  private 
   def generate_salt 
     self.salt = self.object_id.to_s+rand.to_s
   end
end
