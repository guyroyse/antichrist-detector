# encoding: UTF-8

describe 'Antichrist' do

  describe 'Name::normalize' do
    include Antichrist::Name

    it 'uppercases the name' do
      expect(normalize('Bob')).to eq 'BOB'
    end

    it 'strips whitespace from the name' do
      expect(normalize("\t\r\n ")).to eq ''
    end

    it 'leaves numbers in the name' do
      expect(normalize('12345')).to eq '12345'
    end

    it 'strips out extended characters from the name' do
      expect(normalize('ñé')).to eq ''
    end

    it 'strips out symbols and punctuation' do
      expect(normalize('?<>!@#$%^&*()_+-=`~;<>/"')).to eq ''
    end

  end

  describe 'Calculator::calculate' do
    include Antichrist::Calculator

    it 'returns the ASCII value of a passed in character' do
      expect(calculate('A')).to eq 65
    end

    it 'returns the ASCII value of a passed in number' do
      expect(calculate('1')).to eq 49
    end

    it 'returns the total ASCII values of a passed in string' do
      expect(calculate('BOBVILLA')).to eq 587
    end

  end

end
