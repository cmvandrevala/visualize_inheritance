require_relative "visualize_inheritance/version"

module VisualizeInheritance

  def self.bin
    File.join root, 'bin'
  end

  def self.lib
    File.join root, 'lib'
  end

  def self.root
    File.dirname __dir__
  end

  def self.csv
    f = File.join bin, 'visualize.sh'
    system("sh #{f}")
  end

  def self.graph
    f = File.join lib, 'visualize_inheritance', 'templates', 'index.html'
    system("open #{f}")
  end

end