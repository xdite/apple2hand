class User < ActiveRecord::Base


  extend OmniauthCallbacks
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body


  def bind_service(response)
    # fb
    provider = response["provider"]
    uid = response["uid"]
    update_attribute(:fb_id, uid)
  end

  def facebook_user?
    fb_id.to_i > 0
  end


  def admin?
    return true if Setting.admin_emails.include?(self.email)
    return false
  end
end
