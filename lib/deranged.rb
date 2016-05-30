module Deranged
  require 'deranged/formatter'
  require 'deranged/parser'
  require 'deranged/attrs'

  def self.parse(string)
    Parser.new(string).to_range
  end

  def self.format(range)
    Formatter.new(range).to_s
  end
end
