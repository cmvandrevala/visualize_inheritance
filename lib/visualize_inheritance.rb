require_relative "visualize_inheritance/version"

module VisualizeInheritance

  class Graph

    def self.create
      system("sh ../bin/visualize.sh")
    end

  end

end