module Bitmap
  module Commands
    describe Create do
      subject      { described_class }
      let(:input)  { '2 2' }

      describe '.run' do
        it { expect(subject.run(input)).to be_kind_of(Image) }
        it { expect(subject.run(input).to_s).to eq "OO\nOO\n" }

        context 'invalid x coord' do
          let(:input) { '0 2' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Coords must be between 1 - 250')
            subject.run(input)
          end
        end

        context 'invalid x coord' do
          let(:input) { '251 2' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Coords must be between 1 - 250')
            subject.run(input)
          end
        end

        context 'invalid y coord' do
          let(:input) { '2 0' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Coords must be between 1 - 250')
            subject.run(input)
          end
        end

        context 'invalid y coord' do
          let(:input) { '2 251' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Coords must be between 1 - 250')
            subject.run(input)
          end
        end

      end
    end
  end
end