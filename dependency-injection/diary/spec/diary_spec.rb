describe Diary do
  let(:title) { 'Monday 8 Feb' }
  let(:body) { 'Learned how to apply dependency injection' }
  let(:entry_class) { class_double(Entry, 'Entry Class', new: entry) }
  let(:entry) { instance_double(Entry, 'Entry', title: title, body: body) }

  subject { described_class.new(entry_class) }

  describe '#add' do
    before { subject.add(title, body) }
    it 'adds entry to diary so it can be indexed' do
      expect(subject.index).to include(title)
    end
  end
end
