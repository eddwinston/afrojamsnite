class Feedback
  
  attr_accessor :name, :email, :message

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
    @message = attributes[:message]
  end
  
  def formatted_email
    "#{@name} <#{@email}>"
  end
  
end
