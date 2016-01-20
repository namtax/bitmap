module Commands
  describe DrawHorizontal do
    subject     { described_class }
    let(:image) { Image.new(coords) }

    describe '.run' do
      context 'small image' do
        let(:coords) { '2 2' }
        let(:contents) do
          "DD\n" \
          "00\n"
        end

        it 'colors in correct pixel' do
          subject.run(image, 'X1 X2 2 D')
          expect(image.to_s).to eq contents
        end
      end

      context 'large image' do
        let(:coords) { '4 4' }
        let(:contents) do
          "0000\n" \
          "00XX\n" \
          "0000\n" \
          "0000\n"
        end

        it 'colors in correct pixel' do
          subject.run(image, 'X3 X4 3 X')
          expect(image.to_s).to eq contents
        end
      end
    end
  end
end