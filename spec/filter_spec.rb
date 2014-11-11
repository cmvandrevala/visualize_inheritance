require 'filter'

module VisualizeInheritance

  describe Filter do

    before(:each) do
      @filter = Filter.new
    end

    it "exists" do
      expect(@filter).to be_an_instance_of Filter
    end

    it "returns no output if no class is scanned" do
      expect(@filter.output).to eq []
    end

    it "returns the correct output for one inherited class" do
      @filter.read_in [{"class" => "parent"}]
      expect(@filter.output).to eq [{"parent" => "class"}, {"ruby" => "parent"}]
    end

    it "returns the correct output for two orthogonal inherited classes" do
      @filter.read_in [{"class" => "parent"}, {"another" => "final"}]
      expect(@filter.output).to eq [{"parent" => "class"}, {"ruby" => "parent"}, {"final" => "another"}, {"ruby" => "final"}]
    end

  end

end