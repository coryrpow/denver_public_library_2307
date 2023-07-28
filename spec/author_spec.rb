require './lib/book'
require './lib/author'

RSpec.describe Author do
  before do
    @charlotte_bronte = Author.new({
      first_name: "Charlotte",
      last_name: "Bronte"
    })
  end
  describe "#initialize" do
    it "exists and has readable attributes" do
      expect(@charlotte_bronte).to be_a(Author)
      expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
      expect(@charlotte_bronte.books).to eq([])
    end
  end

  describe "#write" do
    it "can create a new book" do
      jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre).to be_a(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")

      villette = @charlotte_bronte.write("Villette", "1853")
      expect(@charlotte_bronte.books.length).to eq(2)
      expect(@charlotte_bronte.books.last.title).to eq("Villette")

    end


  end






end