class Diary
  def initialize(entry_class = Entry)
    @entries = []
    @entry_class = entry_class
  end

  def add(title, body)
    @entries << new_entry(title, body)
  end

  def index
    titles = entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end

  private

  attr_reader :entries, :entry_class

  def new_entry(title, body)
    entry_class.new(title, body)
  end
end
