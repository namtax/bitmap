module Bitmap
  module Commands
    describe Manual do
      subject      { described_class }
      let(:input)  { '2 2' }
      let(:info) do
        [
         '--',
         'There are 7 supported commands',
         '- I M N - Create a new M x N image with all pixels coloured white (O).',
         '- C - Clears the table, setting all pixels to white (O).',
         '- L X Y C - Colours the pixel (X,Y) with colour C.',
         '- V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2.',
         '- H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2.',
         '- F X Y C - Fill the region R with the colour C.',
         '- S - Show the contents of the current image',
         '- X - Terminate the session',
         '--'
        ]
      end

      describe '.run' do
        it 'provides user with info' do
          expect(subject).to receive(:puts).with(info)
          subject.run(nil)
        end
      end
    end
  end
end