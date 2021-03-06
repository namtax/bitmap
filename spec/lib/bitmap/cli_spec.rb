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

      context 'command with trailing space' do
        let(:input) { 'I 2 2 ' }

        it 'passes instructions to command' do
          expect(Commands::Create).to receive(:run).with('2 2')
          subject.run
        end
      end

      context 'command without instructions' do
        let(:input) { 'I' }

        it 'notifies user' do
          expect(subject).to receive(:puts).with('Please provide a valid command')
          subject.run
        end
      end

      context 'input empty' do
        let(:input) { ' ' }

        it 'notifies user' do
          expect(subject).to receive(:puts).with('Please provide a valid command')
          subject.run
        end
      end

      context 'image doesnt exist' do
        context 'user tries to process image' do
          let(:input) { 'C' }

          it 'notifies user' do
            expect(subject).to receive(:puts).with('Image does not exist')
            subject.run
          end
        end

        context 'user terminates session' do
          let(:input) { 'X' }

          it 'terminates session' do
            expect(Commands::Terminate).to receive(:run)
            subject.run
          end
        end

        context 'user requests assistance' do
          let(:input) { 'man' }

          it 'displays helpful info to user' do
            expect(Commands::Manual).to receive(:run)
            subject.run
          end
        end
      end
    end
  end
end
