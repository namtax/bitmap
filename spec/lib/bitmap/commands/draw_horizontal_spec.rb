module Bitmap
  module Commands
    describe DrawHorizontal do
      subject     { described_class }
      let(:image) { Image.new(coords) }

      describe '.run' do
        context 'small image' do
          let(:coords) { '2 2' }
          let(:contents) do
            "DD\n" \
            "OO\n"
          end

          it 'colors in correct pixels' do
            subject.run(image, 'X1 X2 2 D')
            expect(image.to_s).to eq contents
          end
        end

        context 'large image' do
          let(:coords) { '4 4' }
          let(:contents) do
            "OOOO\n" \
            "XXXX\n" \
            "OOOO\n" \
            "OOOO\n"
          end

          it 'colors in correct pixels' do
            subject.run(image, 'X1 X4 3 X')
            expect(image.to_s).to eq contents
          end
        end
      end
    end
  end
end