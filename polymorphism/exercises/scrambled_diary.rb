class Diary
  attr_reader :contents

  def initialize(contents)
    @contents = contents
  end

  def skramble(scrambler, step = 0)
    self.contents = scrambler.scramble(contents, step)
  end

  def unskramble(unscrambler, step = 0)
    self.contents = unscrambler.unscramble(contents, step)
  end

  private

  attr_writer :contents
end

class StepScrambler
  def scramble(contents, step)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + step).chr
    end
    scrambled_chars.join
  end

  def unscramble(contents, step)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - step).chr
    end
    plain_chars.join
  end
end

class ReverseScrambler
  def scramble(*args)
    args.first.reverse
  end

  def unscramble(*args)
    scramble(args.first)
  end
end

p diary = Diary.new('yo!')
rs = ReverseScrambler.new

p diary.skramble(rs)
p diary.unskramble(rs)

ss = StepScrambler.new

p diary.skramble(ss, 1)
p diary.unskramble(ss, 1)
