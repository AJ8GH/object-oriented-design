class Lock
  def locked?
    locked
  end

  def unlock
    self.locked = false
  end

  def lock
    self.locked = true
  end

  private

  attr_accessor :locked

  def initialize
    @locked = true
  end
end
