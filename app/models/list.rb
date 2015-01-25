class List < ActiveRecord::Base
  has_many :items
  belongs_to :user
end

## getting current list ID
def curr_list_id
  l = List.find(params[:id])[:id]
  return l
end

## getting current user email
def curr_user_email
  e = User.find(current_user)[:email]
  return e
end

## getting list's creator ID
def created_by_id(id)
  listcreatorid = List.find(id)[:user_id]
  return listcreatorid
end

## getting list's creator email
def created_by_email(id)
  userid = List.find(id)[:user_id]
  listcreatoremail = User.find(userid)[:email]
  return listcreatoremail
end

## verifying if the list has items
def checking_if_tems_in_list(id)
  items = Item.where(list_id: id).count
  if items > 0
    list_empty = false
  else
    list_empty = true
  end
  return list_empty
end

## find all the items that belong to the list
def find_list_items(id)
  items = Item.where(list_id: id)
  return items
end

## getting product name if the product exists
def product_name_for_list(id)
  
    if Product.exists?(id)
      @product_name = Product.find(id)[:article]
    else
      @product_name = "This product had been removed"
    end
    return @product_name
end

## getting place name if the place exists
def place_name_for_list(id)
  if Place.exists?(id)
    @place_name = Place.find(id)[:title]
  else
    @place_name = "This shop had been removed"
  end
  return @place_name
end



=begin
def test_umm
  a = 4+4
  return a
end
=end