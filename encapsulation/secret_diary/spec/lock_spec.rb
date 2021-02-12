describe Lock do
  describe '#locked' do
    it 'is locked by default' do
      expect(subject).to be_locked
    end
  end

  describe '#unlock' do
    it 'changes locked? to false' do
      subject.unlock
      expect(subject).not_to be_locked
    end
  end

  describe '#lock' do
    it 'changes locked to true' do
      subject.unlock; subject.lock
      expect(subject).to be_locked
    end
  end
end
