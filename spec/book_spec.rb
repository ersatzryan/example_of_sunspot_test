require 'spec_helper'

describe "without solr" do
  before(:each) do
    @book = Factory(:book)
  end

  it "should not be running" do
    SunspotTest.send(:solr_running?).should eq(false)
  end
  describe "with solr" do
    before(:all) { SunspotTest.setup_solr }
    after(:all) { SunspotTest.stub }

    it "should be running" do
      SunspotTest.send(:solr_running?).should eq(true)
    end
  end
end
