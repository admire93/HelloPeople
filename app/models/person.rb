require 'sha1'
class Person < ActiveRecord::Base
  has_many :posts
  def initialize(params = {})
    if params[:password].to_s.empty?
      params[:password_hash] = ''
      params.delete :password
    else
      params[:password_hash]=PasswordHash.hash(params[:email],params[:password])
      params.delete :password
    end
    super(params)
  end
  def password
    return
  end
  
  def to_param
    self.alias
  end
end

class PasswordHash
  def self.hash(email, password)
    SHA1.new(SHA1.new(password.reverse).to_s + "\n" + email).to_s.reverse   
  end
end
