module Refinery

  module Messages

    class << self
      def version
        Version.to_s
      end
    end

    class Version
      MAJOR = 0
      MINOR = 9
      TINY = 7
      BUILD = nil

      STRING = [MAJOR, MINOR, TINY, BUILD].compact.join('.')

      def self.to_s
        STRING
      end
    end

  end

end