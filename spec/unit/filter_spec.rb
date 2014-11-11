require 'filter'

module VisualizeInheritance

  describe Filter do

    before(:each) do
      @filter = Filter.new
    end

    it "exists" do
      expect(@filter).to be_an_instance_of Filter
    end

    it "returns the basic output if no class is scanned" do
      expect(@filter.output).to eq [{"BasicObject" => "Kernel"}, {"Kernel" => "Object"}]
    end

    it "returns the correct output for one inherited class" do
      @filter.read_in [{"class" => "parent"}]
      expect(@filter.output).to eq [{"parent" => "class"}, {"Object" => "parent"}, {"BasicObject" => "Kernel"}, {"Kernel" => "Object"}]
    end

    it "returns the correct output for two orthogonal inherited classes" do
      @filter.read_in [{"class" => "parent"}, {"another" => "final"}]
      expect(@filter.output).to eq [{"parent" => "class"}, {"Object" => "parent"}, {"final" => "another"}, {"Object" => "final"}, {"BasicObject" => "Kernel"}, {"Kernel" => "Object"}]
    end

    it "can read a file in at initialization" do
      new_filter = Filter.new([{"class" => "parent"}])
      expect(new_filter.output).to eq [{"parent" => "class"}, {"Object" => "parent"}, {"BasicObject" => "Kernel"}, {"Kernel" => "Object"}]
    end

    xit "returns the correct output for one uninherited class" do
      @filter.read_in [{"class" => nil}]
      expect(@filter.output).to eq [{"Object" => "class"}, {"BasicObject" => "Kernel"}, {"Kernel" => "Object"}]
    end

    xit "returns the correct output for two orthogonal uninherited classes"
    xit "returns the correct output for many linked classes"
    xit "returns the correct output for monkey patched branches"

  end

end