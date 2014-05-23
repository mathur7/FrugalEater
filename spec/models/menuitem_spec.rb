require 'spec_helper'

## Doing require twice is harmless but you don't need this line of code.
require 'spec_helper'


## Good tests here.
describe Menuitem do
  it "should create a new instance given valid attributes" do
    menuitem = Menuitem.create(restaurant: "Taco Bell", name: 'cheesy gordita crunch', price: '3.00', locu_id: '1')
    menuitem.should be_valid
  end

  describe 'restaurant' do
    it 'should not be empty' do
      menuitem = Menuitem.create(restaurant: " ")
      menuitem.should_not be_valid
      menuitem.errors[:restaurant].should include("can't be blank")
    end
  end  
  
  describe 'name' do
    it 'should not be empty' do
      menuitem = Menuitem.create(name: " ")
      menuitem.should_not be_valid
      menuitem.errors[:name].should include("can't be blank")
    end
  end

  describe 'price' do
    it 'should not be empty' do
      menuitem = Menuitem.create(price: " ")
      menuitem.should_not be_valid
      menuitem.errors[:price].should include("can't be blank")
    end
  end


  describe 'locu_id' do
    it 'should not be empty' do
      menuitem = Menuitem.create(locu_id: " ")
      menuitem.should_not be_valid
      menuitem.errors[:locu_id].should include("can't be blank")
    end
  end

end
