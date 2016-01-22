module Bitmap
  module Commands
    describe Fill do
      subject      { described_class }
      let!(:image) { Image.create(coords) }
      let(:coords) { '4 4' }

      describe '#run' do
        let(:contents) do
          "OOOO\n" \
          "OOOO\n" \
          "OBBB\n" \
          "BBOB\n"
        end

        before do
          DrawHorizontal.run('X1 X2 1 X')
          DrawHorizontal.run('X2 X4 2 X')
          Color.run('4 1 X')
        end

        it 'fills in pixel and any other pixel with same colour that shares a common side' do
          subject.run('1 1 B')
          expect(image.to_s).to eq contents
        end
      end

      context 'x coord out of bounds' do
        it 'notifies user' do
          expect(subject).to receive(:puts).with('Input out of bounds')
          subject.run('5 1 B')
        end
      end

      context 'last y coord out of bounds' do
        it 'notifies user' do
          expect(subject).to receive(:puts).with('Input out of bounds')
          subject.run('1 5 B')
        end
      end
    end
  end
end