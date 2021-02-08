class SayHello
  def run
    new_email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end

  private

  attr_reader :email_client_class

  def initialize(email_client_class = EmailClient)
    @email_client_class = email_client_class
  end

  def new_email
    email_client_class.new
  end
end
