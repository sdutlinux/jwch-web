class User < ActiveRecord::Base

  #attr_accessor :password_confirmation
  attr_accessible :password_confirmation, :name, :password, :admin, :department

  validates :name,:presence => true,:uniqueness => true
  validates :password, :confirmation => true
  validate :password_must_be_present

  def self.authenticate(name,password)
    if user = find_by_name(name)
      if user.hashed_password == encrypt_password(password,user.salt)
        user
      end
    end
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


=begin
  integer :id     primary_key
  string  :name
  string  :hashed_password
  string  :salt
  string  :department
  boolean :admin
  string :power
  date   :created_at
  date   :updated_at
=end
