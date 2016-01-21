module Commands
  describe Fill do
    subject     { described_class }
    let(:image) { Image.new(coords) }

    describe '#run' do
      let(:coords) { '4 4' }
      let(:contents) do
        "OOOO\n" \
        "OOOO\n" \
        "OBBB\n" \
        "BBOB\n"
      end

      before do
        DrawHorizontal.run(image, 'X1 X2 1 X')
        DrawHorizontal.run(image, 'X2 X4 2 X')
        ColorPixel.run(image, '4 1 X')
      end

      it 'fills in pixel and any other pixel with same colour that shares a common side' do
        subject.run(image, '1 1 B')
        expect(image.to_s).to eq contents
      end
    end
  end
end