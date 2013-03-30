require 'sale'

describe Sale do

  it "gives $0 for no books" do
    cart = []
    Sale.new(cart).total.should == 0
  end

  it "gives $8 for one book" do
    cart = [:one]
    Sale.new(cart).total.should == 8
  end

  it "gives $15.20 for two different books" do
    cart = [:one, :five]
    Sale.new(cart).total.should == 15.20
  end

  it "gives $21.60 for three different books" do
    cart = [:one, :four, :five]
    Sale.new(cart).total.should == 21.60
  end

  it "gives $16 for two of the same book" do
    cart = [:one, :one]
    Sale.new(cart).total.should == 16.00
    end

  it 'knows that one book is one set' do
    cart = [:one]
    Sale.new(cart).booksets.count == 1
  end

  it 'knows that two diff books are one set' do
    cart = [:one, :two]
    Sale.new(cart).booksets.count == 1
  end 

end
