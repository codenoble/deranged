module Deranged
  module Attrs
    def self.included base
      base.extend ClassMethods
    end

    module ClassMethods
      def derange(range_attr_name, string_attr_name = nil)
        string_attr_name ||= :"#{range_attr_name}_string"

        define_method(string_attr_name) do
          Formatter.new(send(range_attr_name)).to_s
        end

        define_method("#{string_attr_name}=") do |string|
          send(:"#{range_attr_name}=", Parser.new(string).to_range)
        end
      end
    end
  end
end
