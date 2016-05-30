module Deranged
  class Formatter
    def initialize(range)
      @range = range
    end

    # TODO: support multiple and custom formats
    def to_s
      [range.min, range.max].uniq.join('-')
    end

    private

    attr_reader :range
  end
end
