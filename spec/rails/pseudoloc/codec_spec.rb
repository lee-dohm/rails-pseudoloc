#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

include Rails::Pseudoloc

describe Codec do
  describe 'when supplied a definitions table' do
    it 'translates a single character into the first character in the output array' do
      codec = Codec.new('a' => 'zyxw'.chars)

      expect(codec.encode('a')).to eq('z')
    end

    it 'translates multiple characters into each successive character in the output array' do
      codec = Codec.new('a' => 'zyxw'.chars)

      expect(codec.encode('aaaa')).to eq('zyxw')
    end

    it 'translates all given characters according to their mappings' do
      codec = Codec.new('a' => 'zyxw', 'b' => 'yxwv', 'c' => 'xwvu')

      expect(codec.encode('abc')).to eq('zxv')
    end

    it 'has a default mapping table' do
      codec = Codec.new

      expect(codec.encode('abc')).to eq('àьć')
    end

    it 'passes through characters it does not have a mapping for' do
      codec = Codec.new('z' => 'abcdefg')

      expect(codec.encode('abc')).to eq('abc')
    end
  end
end
