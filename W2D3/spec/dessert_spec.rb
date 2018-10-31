require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "jimbo") }
  subject(:chocolate) { Dessert.new("chocolate", 5, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(chocolate.type).to eq("chocolate")
    end
    it "sets a quantity" do
      expect(chocolate.quantity).to eq(5)
    end
    it "starts ingredients as an empty array" do
      expect(chocolate.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("chocolate", "tom", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      chocolate.add_ingredient("tomato")
      expect(chocolate.ingredients.pop).to eq("tomato")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["1", "2", "3", "4", "5"]
      ingredients.each do |ingredient|
        chocolate.add_ingredient(ingredient)
      end

      expect(chocolate.ingredients).to eq(ingredients)
      chocolate.mix!
      expect(chocolate.ingredients).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      chocolate.eat(2)
      expect(chocolate.quantity).to eq(3)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect { chocolate.eat(7)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Jimbo the Great Baker")
      expect(chocolate.serve).to eq("Chef Jimbo the Great Baker has made 5 chocolates!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(chocolate)
    end
  end
end
