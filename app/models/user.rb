class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
         
  has_many :lists
end


def curr_user_id
  id = User.find(current_user)[:id]
  return id
end

def curr_user_email
  name = User.find(current_user)[:email]
  return name
end