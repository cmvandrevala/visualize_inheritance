require "bundler/gem_tasks"
require_relative "./lib/visualize_inheritance"

task :clean do
  sh "rm -f force.csv"
  sh "rm -f lib/force.csv"
end

task :csv do
  VisualizeInheritance.csv
end

task :graph do
  VisualizeInheritance.graph
end