module Bitmap
  describe InputValidator do
    subject { described_class }

    context 'create' do
      context 'valid input' do
        it { expect(subject.run('I 2 2')).to be_valid }
        it { expect(subject.run('I 20 20')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('I 2')).to_not be_valid }
        it { expect(subject.run('I 2 X')).to_not be_valid }
      end
    end

    context 'clear' do
      context 'valid input' do
        it { expect(subject.run('C')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('C 1')).to_not be_valid }
      end
    end

    context 'color' do
      context 'valid input' do
        it { expect(subject.run('L 1 2 C')).to be_valid }
        it { expect(subject.run('L 1 2 X')).to be_valid }
        it { expect(subject.run('L 20 20 X')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('L 1 C')).to_not be_valid }
        it { expect(subject.run('L 1 c')).to_not be_valid }
      end
    end

    context 'draw vertical' do
      context 'valid input' do
        it { expect(subject.run('V 2 Y1 Y4 C')).to be_valid }
        it { expect(subject.run('V 2 Y1 Y4 X')).to be_valid }
        it { expect(subject.run('V 2 Y11 Y44 X')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('V X Y1 Y4 C')).to_not be_valid }
        it { expect(subject.run('V X Y1 Y4 c')).to_not be_valid }
      end
    end

    context 'draw horizontal' do
      context 'valid input' do
        it { expect(subject.run('H X1 X4 2 C')).to be_valid }
        it { expect(subject.run('H X1 X4 2 X')).to be_valid }
        it { expect(subject.run('H X20 X24 20 X')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('H XX X4 2 C')).to_not be_valid }
        it { expect(subject.run('H XX X4 2 c')).to_not be_valid }
      end
    end

    context 'fill' do
      context 'valid input' do
        it { expect(subject.run('F 1 2 C')).to be_valid }
        it { expect(subject.run('F 1 2 X')).to be_valid }
        it { expect(subject.run('F 11 22 X')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('F 1 C')).to_not be_valid }
        it { expect(subject.run('F 1 c')).to_not be_valid }
      end
    end

    context 'show' do
      context 'valid input' do
        it { expect(subject.run('S')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('SS')).to_not be_valid }
      end
    end

    context 'terminate' do
      context 'valid input' do
        it { expect(subject.run('X')).to be_valid }
      end

      context 'invalid input' do
        it { expect(subject.run('XX')).to_not be_valid }
      end
    end

    context 'input missing' do
      it { expect(subject.run(' ')).to_not be_valid }
    end
  end
end