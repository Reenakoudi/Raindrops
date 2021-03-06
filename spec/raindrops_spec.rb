require 'raindrops'
describe Raindrops do
  subject(:raindrops) { described_class.new }
  describe '#convert' do
    it 'responds to method convert with one argument' do
      expect(raindrops).to respond_to(:convert).with(1).argument
    end

    it 'output "Pling" if the number is divisible by 3' do
      expect(raindrops.convert(3)).to eq 'Pling'
    end

    it 'output "Plang" if the number is divisible by 5' do
      expect(raindrops.convert(10)).to eq 'Plang'
    end

    it 'output "Plong" if the number is divisible by 7' do
      expect(raindrops.convert(14)).to eq 'Plong'
    end

    it 'output number if the number is not divisible by 3, 5 or 7' do
      expect(raindrops.convert(11)).to eq '11'
    end

    it 'output "PlingPlang" if the number is divisible by 3 and 5' do
      expect(raindrops.convert(15)).to eq 'PlingPlang'
    end

    it 'output "PlingPlong" if the number is divisible by 3 and 7' do
      expect(raindrops.convert(21)).to eq 'PlingPlong'
    end

    it 'output "PlangPlong" if the number is divisible by 5 and 7' do
      expect(raindrops.convert(35)).to eq 'PlangPlong'
    end

    it 'output "PlingPlangPlong" if the number is divisible by 3, 5 and 7' do
      expect(raindrops.convert(315)).to eq 'PlingPlangPlong'
    end
  end
end
