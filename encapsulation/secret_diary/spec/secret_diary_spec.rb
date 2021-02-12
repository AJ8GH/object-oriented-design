describe SecretDiary do
  let(:locked) { instance_double(Lock, :lock, locked?: true) }
  let(:unlocked) { instance_double(Lock, :lock, locked?: false) }
  let(:entry) { {title: 'OOD', body: 'Encapsulation'} }

  context 'when unlocked do' do
    subject { described_class.new(unlocked) }

    describe '#add_entry' do
      it 'adds entry to entries' do
        subject.add_entry(entry)
        expect(subject.get_entries).to eq [entry]
      end
    end
  end

  context 'when locked' do
    subject { described_class.new(locked) }

    describe '#add_entry' do
      it 'throws error' do
        expect { subject.add_entry(entry) }.to raise_error Exception
      end
    end

    describe '#get_entries' do
      it 'throws error' do
        expect { subject.get_entries }.to raise_error Exception
      end
    end
  end
end
