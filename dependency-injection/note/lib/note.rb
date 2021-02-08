class Note
  attr_reader :title, :body

  def display
    formatter.format(self)
  end

  private

  attr_reader :formatter

  def initialize(args)
    args = defaults.merge(args)
    @title = args[:title]
    @body = args[:body]
    @formatter = args[:formatter]
  end

  def defaults
    {
      title: 'title',
      body: 'body',
      formatter: 'formatter'
    }
  end
end
