module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Urleaders"      
    end
  end
end
