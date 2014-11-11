require 'file_scanner'

module VisualizeInheritance

  describe FileScanner do

    it "exists" do
      expect(FileScanner.new).to be_an_instance_of FileScanner
    end

    xit "scans files in the lib directory"
    xit "scans files recursively"
    xit "handles modules"
    xit "ignores files with no class declaration"
    xit "ignores files with incorrect formatting"

  end

end