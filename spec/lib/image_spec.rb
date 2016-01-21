describe Image do
  subject { described_class.new("2 2") }

  describe '.to_s' do
    it { expect(subject.to_s).to eq "OO\nOO\n" }
  end
end