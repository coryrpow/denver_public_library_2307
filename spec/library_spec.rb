require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe Author do
  before do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({
      first_name: "Charlotte",
      last_name: "Bronte"})
    @harper_lee = Author.new({
      first_name: "Harper",
      last_name: "Lee"
      })
  end

  describe "#initialize" do
    it "exists and has readable attributes" do
      expect(@dpl).to be_a(Library)
      expect(@dpl.name).to eq("Denver Public Library")
      expect(@dpl.books).to eq([])
      expect(@dpl.authors).to eq([])
    end
  end

  describe "#add_author" do
    it "can add add books to authors" do
      jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      professor = @charlotte_bronte.write("The Professor", "1857")
      villette = @charlotte_bronte.write("Villette", "1853")
      mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

      expect(@charlotte_bronte.books.length).to eq(3)

      @dpl.add_author(@charlotte_bronte)
      @dpl.add_author(@harper_lee)

      expect(@dpl.authors.length).to eq(2)
      expect(@dpl.books.length).to eq(4)
    end

  end
end