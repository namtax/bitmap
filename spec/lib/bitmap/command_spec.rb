module Bitmap
  describe Command do
    subject { described_class }

    describe '.build' do
      context 'create' do
        it { expect(subject.build('I 2 2')).to eq Commands::Create }
      end

      context 'clear' do
        it { expect(subject.build('C')).to eq Commands::Clear }
      end

      context 'color' do
        it { expect(subject.build('L 1 2 C')).to eq Commands::Color }
      end

      context 'vertical' do
        it { expect(subject.build('V 2 Y1 Y4 C')).to eq Commands::DrawVertical }
      end

      context 'horizontal' do
        it { expect(subject.build('H X1 X4 2 C')).to eq Commands::DrawHorizontal }
      end

      context 'fill' do
        it { expect(subject.build('F 1 2 C')).to eq Commands::Fill }
      end

      context 'show' do
        it { expect(subject.build('S')).to eq Commands::Show }
      end

      context 'terminate' do
        it { expect(subject.build('X')).to eq Commands::Terminate }
      end
    end
  end
end