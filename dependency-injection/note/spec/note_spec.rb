describe Note do
  let(:formatter) { double('Formatter', format: pretty_print) }
  let(:args) { {
    title: 'To do list',
    body: 'Learn about dependency injection',
    formatter: formatter} }

    let(:pretty_print) { "Title: To do list\nLearn about dependency injection" }

  describe '#display' do
    subject { described_class.new(args) }

    it 'pretty prints the note' do
      expect(subject.display).to eq pretty_print
    end

    it 'returns the correct note' do
      expect(subject.display).to include(subject.title).and include(subject.body)
    end
  end
end
