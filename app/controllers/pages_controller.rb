class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
  end
  
  def inside
  end 
    
  def maps 
  end 

  def pc
    @all_pc = ElectoralArea.pc_details()
  end

end
