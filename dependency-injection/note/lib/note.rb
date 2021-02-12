class Note
  attr_reader :title, :body

  def display
    formatter.format(self)
  end

  private

  attr_reader :formatter

  def initialize(args)
    @title = args[:title]
    @body = args[:body]
    @formatter = args[:formatter] || Formatter.new
  end
end
