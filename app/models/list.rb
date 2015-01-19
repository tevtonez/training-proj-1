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

def checking_if_tems_in_list(id)
  items = Item.where(list_id: id).count
  if items > 0
    list_empty = false
  else
    list_empty = true
  end
  return list_empty
end

def test_umm
  a = 4+4
  return a
end