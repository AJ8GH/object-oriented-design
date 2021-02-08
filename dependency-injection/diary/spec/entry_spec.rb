describe Entry do
  subject { described_class.new(:ruby, 'Is great!')}
  describe '#initialize' do
    it 'stores a title' do
      expect(subject.title).to be :ruby
    end

    it 'stores a body' do
      expect(subject.body).to eq 'Is great!'
    end
  end
end
