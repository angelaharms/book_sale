require 'sale'

describe Sale do
  it "gives $0 for no books" do
    books = []
    subject.total(books).should == 0
  end

  it "gives $8 for one book" do
    books = [:one]
    subject.total(books).should == 8
  end

  it "gives $15.20 for two different books" do
    books = [:one, :five]
    subject.total(books).should == 15.20
  end

  it "gives $21.60 for three different books" do
    books = [:one, :four, :five]
    subject.total(books).should == 21.60
  end
end
