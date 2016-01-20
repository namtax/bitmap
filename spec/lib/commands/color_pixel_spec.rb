module Commands
  describe ColorPixel do
    subject     { described_class }
    let(:image) { Image.new(coords) }

    describe '#run' do
      context 'small image' do
        let(:coords)   { '2 2' }
        let(:contents) do
          "0X\n" \
          "00\n"
        end

        it 'colors in correct pixel' do
          subject.run(image, '2 2 X')
          expect(image.to_s).to eq contents
        end
      end

      context 'large image' do
        let(:coords) { '4 4' }
        let(:contents) do
          "0000\n" \
          "Y000\n" \
          "0000\n" \
          "0000\n"
        end

        it 'colors in correct pixel' do
          subject.run(image, '1 3 Y')
          expect(image.to_s).to eq contents
        end
      end
    end
  end
end