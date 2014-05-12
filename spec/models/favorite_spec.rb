require 'spec_helper'

describe Favorite do
  it "should create a new instance given valid attributes" do
    favorite = Favorite.create(name: 'cheesy gordita crunch', description: 'oozing of cheese, crunchy taco and fresh baja sauce', restaurant: "Taco Bell",  price: '3.00', address: '223, mission st', postal_code: '93220', locality: 'san francisco', region: 'CA', user_id: '1')
    favorite.should be_valid
  end

  describe 'name' do
    it 'should include text or it could be empty' do
      favorite = Favorite.create(name: 'cheesy gordita crunch')
      favorite.should be valid
    end
  end

  describe 'restaurant' do
    it 'should not be empty' do
      favorite = Favorite.create(restaurant: " ")
      favorite.should_not be_valid
      favorite.errors[:restaurant].should include("can't be blank")
    end
  end  
  
  describe 'price' do
    it 'should not be empty' do
      favorite = Favorite.create(price: " ")
      favorite.should_not be_valid
      favorite.errors[:price].should include("can't be blank")
    end
  end

  describe 'description' do
    it 'should not be empty' do
      favorite = Favorite.create(description: "oozing of cheese, crunchy taco and fresh baja sauce")
      favorite.should be_valid
    end
  end  

  describe 'address' do
    it 'should not be empty' do
      favorite = Favorite.create(address: " ")
      favorite.should_not be_valid
      favorite.errors[:address].should include("can't be blank")
    end
  end  

  describe 'postal_code' do
    it 'should not be empty' do
      favorite = Favorite.create(postal_code: " ")
      favorite.should_not be_valid
      favorite.errors[:postal_code].should include("can't be blank")
    end
  end  

  describe 'locality' do
    it 'should not be empty' do
      favorite = Favorite.create(locality: " ")
      favorite.should_not be_valid
      favorite.errors[:locality].should include("can't be blank")
    end
  end  

  describe 'region' do
    it 'should not be empty' do
      favorite = Favorite.create(region: " ")
      favorite.should_not be_valid
      favorite.errors[:region].should include("can't be blank")
    end
  end  

  describe 'user_id' do
    it 'should not be empty' do
      favorite = Favorite.create(user_id: " ")
      favorite.should_not be_valid
      favorite.errors[:user_id].should include("can't be blank")
    end
  end  

  

  end
