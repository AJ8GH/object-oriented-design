describe Display do
  describe '#print_answer' do
    it 'pretty prints answer' do
      expect(subject.print_answer(5)).to eq 'The answer is: 5'
    end
  end
end
