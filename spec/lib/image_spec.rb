describe Image do
  subject { described_class.new("2 2") }

  describe '.to_s' do
    it { expect(subject.to_s).to eq "00\n00\n" }
  end
end