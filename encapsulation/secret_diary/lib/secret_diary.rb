class SecretDiary

  def add_entry(entry)
    raise Exception if locked?
    entries << entry
  end

  def get_entries
    raise Exception if locked?
    entries
  end

  private

  attr_reader :entries, :lock

  def initialize(lock = Lock.new)
    @entries = []
    @lock = lock
  end

  def locked?
    lock.locked?
  end
end
