require 'sale'

describe Sale do
  it "gives $0 for no books" do
    cart = []
    subject.total(cart).should == 0
  end

  it "gives $8 for one book" do
    cart = [:one]
    subject.total(cart).should == 8
  end

  it "gives $15.20 for two different books" do
    cart = [:one, :five]
    subject.total(cart).should == 15.20
  end

  it "gives $21.60 for three different books" do
    cart = [:one, :four, :five]
    subject.total(cart).should == 21.60
  end
end
