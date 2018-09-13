require "dependencyinjection"

describe Note do
  describe "#display" do
    it "sends to note to the formatter" do
      header = "Test title"
      body = "Test body"
      some_double = double :noteformatter, format: "Title: #{header}\n#{body}"
      newNote = Note.new(header, body, some_double)
      expect(newNote.display).to eq("Title: #{header}\n#{body}")
    end
  end
end
