module Commands
  describe DrawVertical do
    subject     { described_class }
    let(:image) { Image.new(coords) }

    describe '.run' do
      context 'small image' do
        let(:coords) { '2 2' }
        let(:contents) do
          "OX\n" \
          "OX\n"
        end

        it 'colors in correct pixels' do
          subject.run(image, '2 Y1 Y2 X')
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
          subject.run(image, '2 Y1 Y4 X')
          expect(image.to_s).to eq contents
        end
      end
    end
  end
end