describe Board do
  let(:border) { '---|---|---' }
  let(:row) { '   |   |   ' }
  let(:board) { ([row, border] * 3).join("\n") + "\n#{row}\n" }

  describe '#show_board' do
    it 'displays board to user' do
      expect { subject.show_board }.to output(board).to_stdout
    end

    describe '#move' do
      it 'updates square 1' do
        board[1] = 'X'; subject.move(1, 'X')
        expect { subject.show_board }.to output(board).to_stdout
      end

      it 'updates square 6' do
        board[] = 'O'; subject.move(6, 'O')
        expect { subject.show_board }.to output(board).to_stdout
      end
    end
  end
end
