require 'spec_helper'

describe HallsController do
  before :each do
    @hall = FactoryGirl.create(:hall, { :name => 'Test Hall', :key => 12345678 })
    @feature = FactoryGirl.create(:green_feature, { :name => 'Fluorescence', :content => 'This hall has fluorescent light bulbs' })
    @hall_feature = FactoryGirl.create(:hall_feature, { :hall => @hall, :green_feature => @feature })
    Hall.stub(:find_by_id).and_return(@hall)
  end

  describe 'access the hall index' do
    it 'should retrieve the list of all halls' do
      Hall.should_receive(:all)
      get :index
    end
  end

  describe 'access the graph data for the hall' do
    it 'should find the correct hall by id' do
      Hall.should_receive(:find_by_id).with(@hall.id).and_return(@hall)
      get :show, :id => @hall.id
    end


    it 'should retrieve the graph from the hall' do
      @hall.should_receive(:get_graph)
      get :show, :id => @hall.id
    end
  end

  describe 'access the green features for the hall' do
    it 'should retrieve the green features from the hall' do
      @hall.should_receive(:green_features)
      get :show, :id => @hall.id
    end
  end

end
