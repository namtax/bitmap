module Commands
  describe ColorPixel do
    subject     { described_class }
    let(:image) { Image.new(coords) }

    describe '#run' do
      context 'small image' do
        let(:coords)   { '2 2' }
        let(:contents) do
          "OX\n" \
          "OO\n"
        end

        it 'colors in correct pixel' do
          subject.run(image, '2 2 X')
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
          subject.run(image, '1 3 Y')
          expect(image.to_s).to eq contents
        end
      end
    end
  end
end