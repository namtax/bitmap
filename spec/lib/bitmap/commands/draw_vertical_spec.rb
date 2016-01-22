module Bitmap
  module Commands
    describe DrawVertical do
      subject      { described_class }
      let!(:image) { Image.create(coords) }

      describe '.run' do
        context 'small image' do
          let(:coords) { '2 2' }
          let(:contents) do
            "OX\n" \
            "OX\n"
          end

          it 'colors in correct pixels' do
            subject.run('2 Y1 Y2 X')
            expect(image.to_s).to eq contents
          end
        end

        context 'large image' do
          let(:coords) { '4 4' }
          let(:contents) do
            "OXOO\n" \
            "OXOO\n" \
            "OXOO\n" \
            "OXOO\n"
          end

          it 'colors in correct pixels' do
            subject.run('2 Y1 Y4 X')
            expect(image.to_s).to eq contents
          end
        end

        context 'x coord out of bounds' do
          let(:coords) { '4 4' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Input out of bounds')
            subject.run('0 Y1 Y4 X')
          end
        end

        context 'first y coord out of bounds' do
          let(:coords) { '4 4' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Input out of bounds')
            subject.run('2 Y0 Y4 X')
          end
        end

        context 'second y coord out of bounds' do
          let(:coords) { '4 4' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Input out of bounds')
            subject.run('2 Y1 Y5 X')
          end
        end

      end
    end
  end
end