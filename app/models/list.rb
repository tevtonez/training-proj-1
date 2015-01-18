class List < ActiveRecord::Base
  has_many :items
  belongs_to :user
end

def curr_list_id
  l = List.find(params[:id])[:id]
  return l
end

def curr_user_email
  e = User.find(current_user)[:email]
  return e
end

def created_by_id(id)
  listcreatorid = List.find(id)[:user_id]
  return listcreatorid
end

def created_by_email(id)
  userid = List.find(id)[:user_id]
  listcreatoremail = User.find(userid)[:email]
  return listcreatoremail
end