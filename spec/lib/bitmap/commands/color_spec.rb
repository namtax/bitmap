module Bitmap
  module Commands
    describe Color do
      subject      { described_class }
      let!(:image) { Image.create(coords) }

      describe '#run' do
        context 'small image' do
          let(:coords)   { '2 2' }
          let(:contents) do
            "OX\n" \
            "OO\n"
          end

          it 'colors in correct pixel' do
            subject.run('2 2 X')
            expect(image.to_s).to eq contents
          end
        end

        context 'large image' do
          let(:coords) { '4 4' }
          let(:contents) do
            "OOOO\n" \
            "YOOO\n" \
            "OOOO\n" \
            "OOOO\n"
          end

          it 'colors in correct pixel' do
            subject.run('1 3 Y')
            expect(image.to_s).to eq contents
          end
        end

        context 'input out of image bounds' do
          let(:coords) { '4 4' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Input out of bounds')
            subject.run('1 5 Y')
          end
        end
      end
    end
  end
end