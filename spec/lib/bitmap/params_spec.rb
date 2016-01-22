module Bitmap
  describe Params do
    subject { described_class.new('1 2 3 C') }

    describe '#to_a' do
      it { expect(subject.to_a).to eq [1, 2, 3, 'C'] }
    end
  end
end