module Bitmap
  module Commands
    describe Create do
      subject      { described_class }
      let(:input)  { '2 2' }

      describe '.run' do
        it { expect(subject.run(input)).to be_kind_of(Image) }
        it { expect(subject.run(input).to_s).to eq "OO\nOO\n" }
      end
    end
  end
end