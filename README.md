
# VisualizeInheritance

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'visualize_inheritance'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install visualize_inheritance

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/visualize_inheritance/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


Visualizing Inheritance Structure in Ruby
=========================================

This code uses a simple Bash script combined with a force directed graph in D3 to visualize the inheritance structure of a Ruby project.

Put this in the main folder of the project.  Upon running the bash script create_graph.sh, it will scan the lib folder for all classes, and then create a force directed graph in a browser window using D3.