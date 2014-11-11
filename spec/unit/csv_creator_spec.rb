require 'csv_creator'

module VisualizeInheritance

  describe CSVCreator do

    it "exists" do
      expect(CSVCreator.new).to be_an_instance_of CSVCreator
    end

    xit "creates a CSV file"
    xit "adds the basic class relationships to the CSV file"
    xit "adds the extra class relationships to the CSV file"
    xit "does not overwrite an existing CSV file"

  end

end