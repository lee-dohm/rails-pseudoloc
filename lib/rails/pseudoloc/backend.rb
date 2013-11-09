#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

require 'delegate'

module Rails
  module Pseudoloc
    # An I18n::Backend that pseudolocalizes all translations requested of it and delegates to
    # another backend for the actual translations and localizations.
    class Backend < SimpleDelegator
      # Creates a pseudolocalized backend that gets all its translations from `backend`.
      def initialize(backend)
        super(backend)

        @codec = Codec.new
      end

      # Pseudolocalizes the translation returned from the actual backend.
      def translate(locale, key, options = {})
        value = __getobj__.translate(locale, key, options)

        value.is_a?(String) ? @codec.encode(value) : value
      end
    end
  end
end
