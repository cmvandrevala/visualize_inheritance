require_relative "visualize_inheritance/version"

module VisualizeInheritance

  def self.root
    File.dirname __dir__
  end

  def self.bin
    File.join root, 'bin'
  end

  def self.index
    File.join root, 'lib', 'visualize_inheritance', 'templates', 'index.html'
  end

  def self.csv
    f = File.join bin, 'visualize.sh'
    system("sh #{f}")
  end

  def self.write_index
    system("cp #{index} ./")
  end

  def self.graph
    system("open index.html")
  end

end