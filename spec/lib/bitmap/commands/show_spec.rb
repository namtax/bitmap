module Bitmap
  module Commands
    describe Show do
      subject     { described_class }
      let(:image) { Image.new('2 2') }

      describe '.run' do
        it 'shows image contents' do
          expect(image).to receive(:to_s)
          subject.run(image)
        end
      end
    end
  end
end