require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new }
  let(:printed_menu) { "Prawn Crackers - £1.51, Prawn Gyoza - £3.51, Chicken Gyoza - £3.11, Spring Rolls - £3.15" }
  let(:dish_1)       { "Prawn Gyoza" }
  let(:quantity_1)   { 2 }

  describe '#see_menu' do
    it "allows the user to see a list of dishes with prices" do
      expect(takeaway.see_menu).to eq(printed_menu)
    end
  end

  describe "#add_to_order" do
    it "allows the user to select some number of several available dishes" do
      added_items = "#{dish_1} x#{quantity_1}"
      expect(takeaway.add_to_order(dish_1, quantity_1)).to eq(added_items)
    end
  end
end