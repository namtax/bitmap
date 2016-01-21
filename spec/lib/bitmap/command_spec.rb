module Bitmap
  describe Command do
    subject      { described_class }
    let(:result) { subject.build(type) }

    describe '.build' do
      context 'create' do
        let(:type) { 'I '}
        it { expect(result).to eq Commands::Create }
      end

      context 'clear' do
        let(:type) { 'C' }
        it { expect(result).to eq Commands::Clear }
      end

      context 'color' do
        let(:type) { 'L' }
        it { expect(result).to eq Commands::Color }
      end

      context 'vertical' do
        let(:type) { 'V' }
        it { expect(result).to eq Commands::DrawVertical }
      end

      context 'horizontal' do
        let(:type) { 'H' }
        it { expect(result).to eq Commands::DrawHorizontal }
      end

      context 'fill' do
        let(:type) { 'F' }
        it { expect(result).to eq Commands::Fill }
      end

      context 'show' do
        let(:type) { 'S' }
        it { expect(result).to eq Commands::Show }
      end

      context 'terminate' do
        let(:type) { 'X' }
        it { expect(result).to eq Commands::Terminate }
      end

      context 'incorrect command type' do
        let(:type) { 'B' }
        it do
          expect(subject).to receive(:puts).with('Please supply a valid command')
          subject.build(type)
        end
      end
    end
  end
end