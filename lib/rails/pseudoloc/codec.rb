#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

module Rails
  module Pseudoloc
    # Encodes and decodes strings from the pseudolocalized character set.
    class Codec
      # rubocop:disable MethodLength

      # @return Default pseudolocalization table.
      def self.default_table
        {
          'a' => 'àáâãäåāăąǻάαад',
          'b' => 'þьБъ',
          'c' => '¢çćĉċčсς',
          'd' => 'ďđ',
          'e' => 'èéêëēĕėęěέεеёє℮',
          'f' => 'ƒ',
          'g' => 'ĝğġģ',
          'h' => 'ĥħћђ',
          'i' => 'ìíîïĩīĭįίιϊіїΐ',
          'j' => 'ĵј',
          'k' => 'ķ',
          'l' => 'ĺļľŀłℓ',
          'm' => 'm',
          'n' => 'ήηńņňŉŋñ',
          'o' => 'òóôõöøōŏőοσόо',
          'p' => 'þρр',
          'r' => 'ŕŗřѓґгř',
          's' => 'śŝşѕš',
          't' => 'ţť',
          'u' => 'µùúûüũūŭůűųΰυϋύ',
          'w' => 'ŵωώẁẃẅ',
          'x' => 'хж',
          'y' => 'ýÿŷўỳу',
          'z' => 'źżž'
        }
      end

      # rubocop:enable MethodLength

      # Constructs a codec for the given translation table.
      #
      # @param [Hash] table Mappings from input characters to arrays of possible output characters.
      def initialize(table = Codec.default_table)
        @table = table
      end

      # Encodes the given text using the translation table.
      #
      # @param [String] text Text to encode.
      # @return [String] Encoded text.
      def encode(text)
        output = ''

        text.each_char.each_with_index do |char, i|
          alts = @table.fetch(char, [char])
          output << alts[i % alts.length]
        end

        output
      end
    end
  end
end
