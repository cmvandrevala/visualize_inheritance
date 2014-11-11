require "visualize_inheritance/version"

module VisualizeInheritance

  class Filter

    def initialize
      @scanned_classes = []
      @output_array = []
    end

    def read_in(scanned_classes)
      @scanned_classes = scanned_classes
    end

    def output
      @scanned_classes.each do |hash|
        @output_array << hash.invert
        @output_array << {"ruby" => hash.values.first}
      end
      @output_array
    end

  end

end