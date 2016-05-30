module Deranged
  class Formatter
    def initialize(range)
      @range = range
    end

    # TODO: support multiple and custom formats
    def to_s
      return '' if range.nil?
      [range.min, range.max].uniq.join('-')
    end

    private

    attr_reader :range
  end
end
