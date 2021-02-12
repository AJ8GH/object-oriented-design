describe Calculator do
  let(:answer) { 'The answer is 5' }
  let(:display) { instance_double(Display, :display, print_answer: answer)}

  subject { described_class.new(display) }

  describe '#add' do
    it 'can do addition' do
      expect(subject.add(1, 2)).to be 3
    end
  end

  describe '#subtract' do
    it 'can do addition' do
      expect(subject.subtract(2, 2)).to be_zero
    end
  end

  describe '#print_answer' do
    it 'prints the answer' do
      expect(subject.print_answer(5)).to be answer
    end
  end
end
