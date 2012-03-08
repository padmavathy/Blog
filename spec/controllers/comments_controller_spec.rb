require 'spec_helper'

describe CommentsController do
		#~ describe "GET 'index'" do
    #~ it "should be successful" do
      #~ get 'index'
      #~ response.should be_success
    #~ end
		  #~ end
	describe "GET 'new'" do
    it "should be successful" do
      @comment=Comment.new
      response.should be_success
    end
		  end
	describe "GET 'edit'" do
    it "should be successful" do
      Comment.stub(:find) 
      response.should be_success
    end
	end
	
	describe "GET 'show'" do
    it "should be successful" do
      Comment.stub(:find) 
      response.should be_success
    end
  end
	describe "PUT 'update'" do
		it "should be successful" do
			@comment=Comment.stub(:find)
			@comment.stub(:update_attributes => true)
			response.should be_success
		end
	end
	describe "POST 'create'" do
		it "should be_success" do
			lambda do
		visit '/'
		fill_in ":title",:with => "ruby"
		fill_in ":body",:with => "Article about ruby language"
		fill_in ":published_at",:with => "2014-10-18 17:22:00"
		fill_in ":excerpt",:with => "music"
		fill_in ":location",:with => "chennai"
		end
			response.should be_success
			end
		end
describe "DELETE 'destroy'" do
		it "should be successful" do
			@comment=Comment.stub(:find)
			@comment.stub(:destroy => true)
			response.should be_success
		end
	end
	end