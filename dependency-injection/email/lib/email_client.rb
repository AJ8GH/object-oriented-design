class EmailClient
  attr_reader :message

  def initialize(message = Message.new)
    @message = message
  end
end
