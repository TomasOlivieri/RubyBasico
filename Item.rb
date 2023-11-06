class Item
  
  attr_writer :text, :check

  def initialize (text)
    @text = text
    @check = false
  end

  def to_s
    if(@check)
      return "[X] #{@text}"
    else
      return "[ ] #{@text}"
    end
  end
end
