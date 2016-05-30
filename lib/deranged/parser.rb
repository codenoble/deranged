module Deranged
  class Parser
    class InvalidRangeString < ArgumentError; end

    def initialize(string)
      @string = string.to_s
    end

    def to_range
      return nil if numbers.empty?
      numbers.first..numbers.last
    end

    def to_range!
      raise InvalidRangeString if to_range.nil?
      to_range
    end

    private

    attr_reader :string

    def numbers
      @numbers ||= sanitized_string.split.map(&cast_method)
    end

    # TODO: support non-US number formats
    def sanitized_string
      @sanitized_string ||= (
        str = string.dup
        # Remove thousand separator commas
        str.gsub! /(\d)(,)(?=\d{3}\b)/, '\1'

        # replace any non number or decimal characters with spaces
        str.gsub! /[^0-9\.]/, ' '

        str
      )
    end

    def cast_method
      sanitized_string =~ /\.[0-9]/ ? :to_f : :to_i
    end
  end
end
