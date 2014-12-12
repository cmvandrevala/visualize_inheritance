
# VisualizeInheritance

VisualizeInheritance is a gem that creates a visualization of the class structure of an app. It couples a simple Bash script and a D3 force directed graph through Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'visualize_inheritance'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install visualize_inheritance

## Usage

In order to create a visualization of the class structure, first, create a ruby script in the home directory. Add the following lines to the script:

	$ VisualizeInheritance.csv
	$ VisualizeInheritance.write_index
	$ VisualizeInheritance.graph

Then, run the ruby script. It will create a force directed graph in a new browser window.

## Contributing

1. Fork it ( https://github.com/cmvandrevala/visualize_inheritance/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
