module Bitmap
  module Commands
    describe Clear do
      subject     { described_class }
      let(:image) { Image.new(coords) }

      describe '#run' do
        context 'small image' do
          let(:coords)   { '2 2' }
          let(:contents) do
            "OO\n" \
            "OO\n"
          end

          before { Fill.run(image, '1 1 B') }

          it 'resets all pixels to white' do
            subject.run(image)
            expect(image.to_s).to eq contents
          end
        end

        context 'large image' do
          let(:coords) { '4 4' }
          let(:contents) do
            "OOOO\n" \
            "OOOO\n" \
            "OOOO\n" \
            "OOOO\n"
          end

          before { Fill.run(image, '1 1 B') }

          it 'resets all pixels to white' do
            subject.run(image)
            expect(image.to_s).to eq contents
          end
        end
      end
    end
  end
end