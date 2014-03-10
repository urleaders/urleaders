class State < ActiveRecord::Base

  DELETED_NO = 0
  DELETED_YES = 1

  def self.find_by_name(str)
    return State.find(:first, :conditions => ["name = ?", str.downcase])
  end

end
