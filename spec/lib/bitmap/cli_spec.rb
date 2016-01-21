module Bitmap
  describe CLI do
    subject { described_class.new(input) }

    describe '#run' do
      context 'command with instructions' do
        let(:input) { 'I 2 2' }

        it 'passes instructions to command' do
          expect(Commands::Create).to receive(:run).with('2 2')
          subject.run
        end
      end

      context 'command without instructions' do
        let(:input) { 'C' }

        it 'does not pass anything to command' do
          expect(Commands::Clear).to receive(:run).with(nil)
          subject.run
        end
      end
    end
  end
end
