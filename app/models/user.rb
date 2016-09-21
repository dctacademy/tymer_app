class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :courses
  has_many :student_sources
  has_many :students
  has_many :batches
  has_many :tracker
  has_many :messages
  has_one :profile
  after_create :send_admin_mail
  def send_admin_mail
    Notifications.new_user_waiting_for_approval(self).deliver!
  end
  
  def active_for_authentication? 
    super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end
end
